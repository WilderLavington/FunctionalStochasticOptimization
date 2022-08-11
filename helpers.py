
import torch

# helpers
def compute_grad_norm(grad_list):
    grad_norm = 0.
    device = torch.device("cuda" if (torch.cuda.is_available()) else "cpu")
    # assert 1==0
    for g in grad_list:
        if g is None:
            continue
        if torch.sum(torch.mul(g, g)).device != device:
            grad_norm += torch.sum(torch.mul(g, g)).to(device)
        else:
            grad_norm += torch.sum(torch.mul(g, g))
    grad_norm = torch.sqrt(grad_norm)
    return grad_norm
def get_grad_list(params):
    g_list = []
    for p in params:
        grad = p.grad
        if grad is None:
            grad = 0.
        g_list += [grad]
    return g_list
def replace_params(model, params):
    zipped = zip([m for m in params], [m for m in model.parameters()])
    for p_new, p_current in zipped:
        p_current.data = p_new
    return model
def timer(start,end):
    hours, rem = divmod(end-start, 3600)
    minutes, seconds = divmod(rem, 60)
    return "{:0>2}:{:0>2}:{:05.2f}".format(int(hours),int(minutes),seconds)
# line-search conditions
def check_armijo_conditions(step_size, loss, grad_norm,
                  loss_next, c, beta_b):
    found = 0
    # computing the new break condition
    break_condition = loss_next - \
        (loss - (step_size) * c * grad_norm**2)
    if (break_condition <= 0):
        found = 1
    else:
        # decrease the step-size by a multiplicative factor
        step_size = step_size * beta_b
    return found, step_size
