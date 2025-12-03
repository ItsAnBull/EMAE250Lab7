clc; clear all;

f1 = @(vars) vars(3);
f2 = @(vars) -3*vars(3) - 2.5*vars(2);
funcs = {f1 f2};
init = [0 1 -0.25];
h = 0.2;
num_steps = 20;
eps = 0.0001;
ZhouK_Lab7(funcs, init, h, num_steps, eps);

% f1 = @(vars) vars(3);
% f2 = @(vars) vars(4);
% f3 = @(vars) -1*vars(2) - 2*vars(3) - 2*vars(4);
% funcs = {f1 f2 f3};
% init = [0 1 0 0];
% h = 0.05;
% num_steps = 100;
% eps = 0.0001;
% ZhouK_Lab7(funcs, init, h, num_steps, eps);



