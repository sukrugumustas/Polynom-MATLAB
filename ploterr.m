% Atakan ÜLGEN, 150115066
% Þükrü GÜMÜÞTAÞ, 150114032

% This script calculates the approximate value
% of pi using Monte Carlo simulation with 200
% different values between 10 and 10000 then 
% plotting the dot graph of absolute error between
% the real value and our values.

% Creating 200 linearly spaced row vector.
x = linspace(10, 10000, 200);
k = 1;

% This array will store the errors according to
% our x values.
sayilar = zeros(1, length(x));
while(k<=200)
    % Relative error is equal to real value - calculated value.
    sayilar(k) = pi - mypi(x(k));
    k = k+1;
end

% We plot the dotplot of error values.
plot(x,sayilar,'b.');
% Axis Titles
xlabel('x');
ylabel('y'); 
% Plot Title
title('Relative Error of Monte Carlo Simulation');
% Plot Legend
legend('Errors');