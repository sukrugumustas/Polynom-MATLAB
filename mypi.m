% Atakan ÜLGEN, 150115066
% Þükrü GÜMÜÞTAÞ, 150114032

% This function calculates approximate values of pi
% with iterations via Monte Carlo simulation.

function zpi = mypi (numpoints)
i = 0;
count = 0;
while i < numpoints
    
    % Creating random numbers between 1 and - 1.
    firstRandom = 2*rand() - 1;
    secondRandom = 2*rand() - 1;
    
    % If square root of summation of squares of those random values are
    % less than 1, counter will be increased.
    if power((power(firstRandom, 2) + power(secondRandom, 2)), 0.5) < 1
        count = count + 1;
    end
    i = i + 1;
end
zpi = (4*count)/numpoints;
end