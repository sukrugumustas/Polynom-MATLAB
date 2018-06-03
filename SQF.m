% Atakan ÜLGEN, 150115066
% Þükrü GÜMÜÞTAÞ, 150114032

% This function is second question's function,
% we implemented this so we wouldn't have to write
% this function again and again in questions.

% f(x) = 3*sin((x^(3*x))/x)*tan(ln(3*x*e^(0.2*sin(x)))
% (x^(3*x))/x) is equal to x^(3*x - 1) and ln(3*x*e^(0.2*sin(x))
% is equal to ln(3*x) + ln(e^(0.2*sin(x)) and so it
% is equal to sin(x)/5 + ln(3*x).

function val = SQF (x)
val = 3*sin(power(x, 3*x - 1)).*tan(sin(x)/5+log(3*x));
end