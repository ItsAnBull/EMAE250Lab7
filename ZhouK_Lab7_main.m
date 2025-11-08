clc; clear all;

f1 = @(vars) vars(3);

f2 = @(vars) -3*vars(3) - 2.5*vars(2);

funcs = {f1 f2};

init = [0 1 -0.25];

h = 0.2;

num_steps = 4;

eps = 1;

ZhouK_Lab7(funcs, init, h, num_steps, eps);