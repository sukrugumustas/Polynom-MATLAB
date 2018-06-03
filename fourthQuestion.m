% Atakan ÜLGEN, 150115066
% Þükrü GÜMÜÞTAÞ, 150114032

%Our h values
h = [1, 0.1, 0.01];

% These two arrays are going to hold every value we calculated like
% 1st column of derivatives array holds Two Points Method values
% 2nd column of derivatives array holds Three Points Method values
% 3rd column of derivatives array holds Five Points Method values
% 1st column of integrals array holds Trapezoidal Rule values
% 2nd column of integrals array holds Simpson's Rule values
% 3rd column of integrals array holds Simpson's Three Eight Rule values
derivatives = zeros(3);
integrals = zeros(3);

% This is the initial value of function with pi
initialX = SQF(pi);

% Our interval will have five values between 1.8 and 3.2 for Integrals
xIntervals = linspace(1.8, 3.2, 5);


for i=1:length(h)
    eq1 = SQF(pi + h(i));
    eq2 = SQF(pi - h(i));
    eq3 = SQF(pi + 2*h(i));
    eq4 = SQF(pi - 2*h(i));
    eq5 = SQF(xIntervals(1));
    eq6 = SQF(xIntervals(2));
    eq7 = SQF(xIntervals(3));
    eq8 = SQF(xIntervals(4));
    eq9 = SQF(xIntervals(5));
    
    % This line calculates Two Points Method
    derivatives(i, 1) = (eq1 - initialX)/h(i);
    % This line calculates Three Points Method
    derivatives(i, 2) = (eq1 - eq2)/2*h(i);
    % This line calculates Five Points Method
    derivatives(i, 3) = (eq4 - eq3 + 8*(eq1-eq2))/12*h(i);
    
    % This line calculates Trapezoidal Rule
    integrals(i, 1) = (eq5 + eq9)*h(i)/2;
    % This line calculates Simpson's Rule
    integrals(i, 2) = (eq5 + eq9 + 4*eq7)*h(i)/3;
    % This line calculates Simpson's Three-Eight Rule
    integrals(i, 3) = (eq5 + eq9 + 3*(eq6 + eq8))*3*h(i)/8;
end

% Taking transpose of h values for tables
hValues = h';

% Getting three different 1 column-array for tables of derivatives
TwoPointsMethod = derivatives(:, 1);
ThreePointsMethod = derivatives(:, 2);
FivePointsMethod = derivatives(:, 3);

% Getting three different 1 column-array for tables of integrals
TrapezoidalRule = integrals(:, 1);
SimpsonsRule = integrals(:, 2);
SimpsonsThreeEightsRule = integrals(:, 3);

%Displaying the tables
disp('a part of Question');
disp(table(hValues, TwoPointsMethod, ThreePointsMethod, FivePointsMethod));
disp('b part of Question');
disp(table(hValues, TrapezoidalRule, SimpsonsRule, SimpsonsThreeEightsRule));