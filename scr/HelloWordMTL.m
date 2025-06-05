disp('Hello, World!')

% Simple demo

x = 0:0.1:2*pi;            % Create x-axis values
y = sin(x);                % Compute y-values

plot(x, y);                % Plot the sine wave
title('Sine Wave');        % Add title
xlabel('x');               % Label x-axis
ylabel('sin(x)');          % Label y-axis
grid on;                   % Show grid

% Simple demo 2

function result = addTwoNumbers(a, b)
    % ADDTWONUMBERS Adds two input values

    result = a + b;
end