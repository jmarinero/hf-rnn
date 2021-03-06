function y = ddSMX(x)
% Hessian of the softmax nonlinearity

y = 2*tprod( exp(x)*exp(x)', [1 2], exp(x), 3 )/sum(exp(x))^3 ...
    + diag_slice( -exp(x)*exp(x)'/sum(exp(x))^2, 1 ) ...
    + diag_slice( -exp(x)*exp(x)'/sum(exp(x))^2, 2 ) ...
    + diag_slice( -exp(x)*exp(x)'/sum(exp(x))^2, 3 ) ...
    + diag_tensor(exp(x),3)/sum(exp(x));