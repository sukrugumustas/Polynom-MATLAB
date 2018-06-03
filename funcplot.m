% Atakan ÜLGEN, 150115066
% Þükrü GÜMÜÞTAÞ, 150114032

% This code is plotting the function f(x) =
% 3*sin((x^(3*x))/x)*tan(ln(3*x*e^(0.2*sin(x))) between
% the interval [pi, 6*pi] with 2000 linear space.

% (x^(3*x))/x) is equal to x^(3*x - 1) and ln(3*x*e^(0.2*sin(x))
% is equal to ln(3*x) + ln(e^(0.2*sin(x)) and so it
% is equal to sin(x)/5 + ln(3*x). We implemented
% this function in the SQF.m file because this
% function will be used a lot in both second and
% forth questions.

% Here we are generating linearly spaced row vector
% between pi and 6*pi with 2000 values.
x = linspace(pi, 6*pi, 2000);
% y will hold the values of x in f(x)
y = SQF(x);
% We are plotting the function.
plot(x,y);
% Axis Titles
xlabel('x');
ylabel('y'); 
% Plot Title
title('f(x) between pi and 6*pi');
% Plot Legend
legend('f(x)');