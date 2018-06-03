% Atakan ÜLGEN, 150115066
% Þükrü GÜMÜÞTAÞ, 150114032

% We implemented this function for plotting an n(th) degree
% polynomial p, the integral of p with constant c = 1 and
% the derivative of p in the same plot.

function plotpoint (coef, x1, x2, numpoints)

% Here we are getting the coefficient size of coef row vector
% which is also equal to maximum power in polynomial
% without x^0.
coefNum = length(coef) - 1;
maxpower = coefNum;

% This variable will be used to calculate intagral of p.
lengthOfX = length(coef);

% When we take derivative the 0th degree element in polynomial
% becomes zero, the coefficents of elements are being
% multiplied by power of that element and power of that element
% decreases.

% That is why we are taking all elements in coef except last one.
coef_of_derivative = coef(1:end-1);

% When we integrate a function or polynomial, the coefficient of
% element becomes the new power of that unknown variable and that
% element is divided by coefficient.

% That is why we are taking all elements in coef and add 1 as a
% constant value.
coef_of_integral = coef;
coef_of_integral(end+1) = 1;

% This loop takes derivative. We start from the maximum degree
% element. When an element is taken, we multiply its coefficient
% with its power and decrease its power.
for i=1:coefNum
    coef_of_derivative(i) = coef_of_derivative(i)*maxpower;
    maxpower = maxpower - 1;
end

% This loop integrates p. We start from the maximum degree
% element. When an element is taken, we divide its coefficient
% with its power's surplus and increase its power.
for k=1:coefNum+1
    coef_of_integral(k) = coef_of_integral(k)/lengthOfX;
    lengthOfX = lengthOfX - 1;
end

% Here we are generating linearly spaced row vector
% between x1 and x2 with numpoints values.
x = linspace(x1, x2, numpoints);

% We are plotting all polynomials.
plot(x, polyval(coef, x), 'b', x, polyval(coef, x), 'b.', x, polyval(coef_of_derivative, x), 'r', x, polyval(coef_of_derivative, x), 'r.', x, polyval(coef_of_integral, x), 'g', x, polyval(coef_of_integral, x), 'g.');

% Axis Titles
xlabel('x');
ylabel('y');
% Plot Title
title('Plot of p, Its Integral and Its Derivative');
% Plot Legend
legend('p','marked date of p','p''','marked data of p''','integral','marked data of integral');
end

