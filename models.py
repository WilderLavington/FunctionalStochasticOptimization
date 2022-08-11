
import torch.nn as nn
import torch

class DiscreteLinearModel(nn.Module):
    def __init__(self, num_inputs, num_actions):
        super(DiscreteLinearModel, self).__init__()
        # set info
        self.num_inputs = num_inputs
        self.num_actions = num_actions
        self.output_linear = nn.Linear(num_inputs, num_actions)
        self.model_type = 'DiscreteLinearModel'
    def sample(self, state):
        logits = self.forward(state)
        logits = torch.clamp(logits, min=-20,max=2)
        dist = torch.distributions.Categorical(logits=logits)
        action = dist.sample()
        return dist.sample(), dist.log_prob(action), torch.argmax(logits,dim=-1)
    def log_prob(self, state, action):
        if not torch.is_tensor(state):
            state = torch.tensor(state).to(self.device)
            action = torch.tensor(action).to(self.device)
        logits = self.forward(state)
        logits = torch.clamp(logits, min=-20,max=20)
        dist = torch.distributions.Categorical(logits=logits)
        return dist.log_prob(action)
    def transform_state(self, state):
        # if torch.is_tensor(state):
        #     state = state.cpu().numpy()
        return state
    def forward(self, state):
        state = self.transform_state(state)
        logits = self.output_linear(state)
        return logits

class ContinuousLinearModel(nn.Module):
    def __init__(self, num_inputs, num_actions):
        super(ContinuousLinearModel, self).__init__()
        # something to compute it all
        self.mean_linear = nn.Linear(num_inputs, num_actions)
    def sample(self, state, reparam=True):
        # grab info
        mean, log_std = self.forward(state)
        # force requirements on std
        normal = Normal(mean, log_std.exp())
        x_t = normal.sample()
        log_prob = normal.log_prob(x_t)
        return x_t, log_prob, mean
    def log_prob(self, state, action):
        # get dist
        mean, log_std = self.forward(state)
        normal = Normal(mean, log_std.exp())
        log_prob = normal.log_prob(action).sum(1, keepdim=True)
        # return
        return log_prob
    def transform_state(self, state):
        # if torch.is_tensor(state):
        #     state = state.cpu().numpy()
        return state
    def forward(self, state):
        state = self.transform_state(state)
        output = self.mean_linear(state)
        return self.mean_linear(state), torch.zeros(output.shape)
