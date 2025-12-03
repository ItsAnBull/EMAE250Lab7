% This file will run code once, plotting the graphs

clc; clear all;

XX = 68;
YY = 84;

w = 0.7483;

F = 10;
m1 = 5;
m2 = 9;
k1 = 25;
k2 = 20;
c1 = (9-(XX/50));
c2 = (11+(YY/50));

f1 = @(vars) vars(4);
f2 = @(vars) vars(5);
f3 = @(vars) ((-1*(k1+k2)*vars(2))+(k2*vars(3))-((c1+c2)*vars(4))+(c2*vars(5)))/m1;
f4 = @(vars) ((F*cos(w*vars(1)))-(k2*vars(3))+(k2*vars(2))-(c2*vars(5))+(c2*vars(4)))/m2;
funcs = {f1 f2 f3 f4};
init = [0 0 0 0 0];
h = 0.01;
eps = 0.0001;
t = 80;
num_steps = t/h;
xvals = ZhouK_Lab7B(funcs, init, h, num_steps, eps, true);
ratio = xvals(2)/xvals(1)


