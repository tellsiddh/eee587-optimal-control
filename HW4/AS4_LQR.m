%% Siddharth Jain
% Assignment 4 1226137070
clear;
clc;

x0 = [2; 1]; % Given initial state            
Q = [0.25 0; 0 0.05]; % Given
R = 0.05; % Given

% DEFINE THE SYSTEM  
A = [0.9974, 0.0539; -0.1078, 1.1591];
B = [0.0013; 0.0539]; 
H = eye(2); % Identity Matrix

%% For N = 50 computing the optimal gain using LQR
N = 50;   
Z = zeros(N, 2); % Gains
U = zeros(N, 1); % Control inputs
x = zeros(2, N+1); % States
x(:,1) = x0; % Initial value of states

P = H; % Initialize value of P
J = 0;
for i = 1 : N
    Z(i,:) = -inv(R + B' * P * B) * B' * P * A; % Feedback Gain
    P = Q + Z(i, :)' * R * Z(i, :) + (A + B * Z(i, :))' * P * (A + B * Z(i, :)); % Ricatti Equation 
    U(i) = Z(i, :) * x(:, i); % Optimal control
    x(:, i + 1) = A * x(:, i) + B * U(i); % State Propogation
    J = J + 0.5 * (x(:, 1)' * Q * x(:, i) + U(i)' * R * U(i)); % Optimal Cost
end

disp("Total cost for N = " + N + " is = " + J);
disp("J*_x0 for N = " + N + " is " + (0.5 * x0' * P * x0))

% Plots
figure(1) 
subplot(2,2,1)
plot(x(1, 1 : N))
title("State 1 for N = " + N); 
xlabel('Time Index');
ylabel('Value')
grid on
subplot(2,2,2)
plot(x(2, 1 : N))
title("State 2 for N = " + N);
xlabel('Time Index');
ylabel('Value')
grid on
subplot(2,2,3)
plot(Z(:,1));
hold on; 
plot(Z(:,2));
title("Feedback Gain for N = " + N); 
xlabel('Time Index');
ylabel('Value')
legend('x1','x2')
grid on
subplot(2,2,4)
plot(U);
title("Optimal Control for N = " + N); 
xlabel('Time Index');
ylabel('Value')
grid on

%% For N = 100 computing the optimal gain using LQR
N = 100;   
Z = zeros(N, 2); % Gains
U = zeros(N, 1); % Control inputs
x = zeros(2, N+1); % States
x(:,1) = x0; % Initial value of states

P = H; % Initialize value of P
J = 0;
for i = 1 : N
    Z(i,:) = -inv(R + B' * P * B) * B' * P * A; % Feedback Gain
    P = Q + Z(i, :)' * R * Z(i, :) + (A + B * Z(i, :))' * P * (A + B * Z(i, :)); % Ricatti Equation 
    U(i) = Z(i, :) * x(:, i); % Optimal control
    x(:, i + 1) = A * x(:, i) + B * U(i); % State Propogation
    J = J + 0.5 * (x(:, 1)' * Q * x(:, i) + U(i)' * R * U(i)); % Optimal Cost
end

disp("Total cost for N = " + N + " is = " + J);
disp("J*_x0 for N = " + N + " is " + (0.5 * x0' * P * x0))

% Plots
figure(2) 
subplot(2,2,1)
plot(x(1, 1 : N))
title("State 1 for N = " + N); 
xlabel('Time Index');
ylabel('Value')
grid on
subplot(2,2,2)
plot(x(2, 1 : N))
title("State 2 for N = " + N);
xlabel('Time Index');
ylabel('Value')
grid on
subplot(2,2,3)
plot(Z(:,1));
hold on; 
plot(Z(:,2));
title("Feedback Gain for N = " + N); 
xlabel('Time Index');
ylabel('Value')
legend('x1','x2')
grid on
subplot(2,2,4)
plot(U);
title("Optimal Control for N = " + N); 
xlabel('Time Index');
ylabel('Value')
grid on

%% For N = 200 computing the optimal gain using LQR
N = 200;   
Z = zeros(N, 2); % Gains
U = zeros(N, 1); % Control inputs
x = zeros(2, N+1); % States
x(:,1) = x0; % Initial value of states

P = H; % Initialize value of P
J = 0;
for i = 1 : N
    Z(i,:) = -inv(R + B' * P * B) * B' * P * A; % Feedback Gain
    P = Q + Z(i, :)' * R * Z(i, :) + (A + B * Z(i, :))' * P * (A + B * Z(i, :)); % Ricatti Equation 
    U(i) = Z(i, :) * x(:, i); % Optimal control
    x(:, i + 1) = A * x(:, i) + B * U(i); % State Propogation
    J = J + 0.5 * (x(:, 1)' * Q * x(:, i) + U(i)' * R * U(i)); % Optimal Cost
end

disp("Total cost for N = " + N + " is = " + J);
disp("J*_x0 for N = " + N + " is " + (0.5 * x0' * P * x0))

% Plots
figure(3) 
subplot(2,2,1)
plot(x(1, 1 : N))
title("State 1 for N = " + N); 
xlabel('Time Index');
ylabel('Value')
grid on
subplot(2,2,2)
plot(x(2, 1 : N))
title("State 2 for N = " + N);
xlabel('Time Index');
ylabel('Value')
grid on
subplot(2,2,3)
plot(Z(:,1));
hold on; 
plot(Z(:,2));
title("Feedback Gain for N = " + N); 
xlabel('Time Index');
ylabel('Value')
legend('x1','x2')
grid on
subplot(2,2,4)
plot(U);
title("Optimal Control for N = " + N); 
xlabel('Time Index');
ylabel('Value')
grid on