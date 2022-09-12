
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

    def forward(self, state):
        state = state.float()
        output = self.mean_linear(state)
        return self.mean_linear(state)

class LinearNueralNetworkModel(nn.Module):
    def __init__(self, input_size, hidden_sizes, output_size, bias=True):
        super().__init__()
        self._prediction_params = None
        self.input_size = input_size
        if output_size:
            self.output_size = output_size
            self.squeeze_output = False
        else:
            self.output_size = 1
            self.squeeze_output = True
        if len(hidden_sizes) == 0:
            self.hidden_layers = []
            self.output_layer = nn.Linear(self.input_size, self.output_size, bias=bias)
        else:
            self.hidden_layers = nn.ModuleList([nn.Linear(in_size, out_size, bias=bias) for in_size, out_size in zip([self.input_size] + hidden_sizes[:-1], hidden_sizes)])
            self.output_layer = nn.Linear(hidden_sizes[-1], self.output_size, bias=bias)
    def forward(self, x):
        x = x.view(-1, self.input_size)
        out = x
        for layer in self.hidden_layers:
            Z = layer(out)
            out = Z
        logits = self.output_layer(out)
        if self.squeeze_output:
            logits = torch.squeeze(logits)
        return logits
