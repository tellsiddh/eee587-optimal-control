%% Data given
L = 0.5; % Henrys
K = 0.01; % torque constant
J = 0.01; % kg.m^2

%% Q1 Plot of motor angular velocity with variable B
R = 1;
B_Variable = [0.1 0.25 0.5];

for i = 1:3
    Bm = B_Variable(i);
    A = [-R/L -K/L; K/J -Bm/J];
    B = [1/L; 0];
    C = [0 1];
    D = 0;
    motor_A(i) = ss(A,B,C,D);
end

figure
step(motor_A(1),motor_A(2), motor_A(3));
title("Plot of motor angular velocity with variable B")
legend("B= 0.1", "B = 0.25", "B = 0.5")

%% Q2 Plot of motor current with variable B

R = 1;
B_Variable = [0.1 0.25 0.5];

for i = 1:3
    Bm = B_Variable(i);
    A = [-R/L -K/L; K/J -Bm/J];
    B = [1/L; 0];
    C = [1 0];
    D = 0;
    motor_B(i) = ss(A,B,C,D);
end

figure
step(motor_B(1),motor_B(2), motor_B(3));
title("Plot of motor current with variable B")
legend("B= 0.1", "B = 0.25", "B = 0.5")

%% Q3 Plot of motor angular velocity with variable R

B_given = 1;
R_Variable = [1 0.75 0.5];

for i = 1:3
    Rm = R_Variable(i);
    A = [-Rm/L -K/L; K/J -B_given/J];
    B = [1/L; 0];
    C = [0 1];
    D = 0;
    motor_C(i) = ss(A,B,C,D);
end

figure
step(motor_C(1),motor_C(2), motor_C(3));
title("Plot of motor angular velocity with variable R")
legend("R = 1", "R = 0.75", "R = 0.5")

%% Q4 Plot of motor current with variable R

B_given = 1;
R_Variable = [1 0.75 0.5];

for i = 1:3
    Rm = R_Variable(i);
    A = [-Rm/L -K/L; K/J -B_given/J];
    B = [1/L; 0];
    C = [1 0];
    D = 0;
    motor_D(i) = ss(A,B,C,D);
end

figure
step(motor_D(1),motor_D(2), motor_D(3));
title("Plot of motor current with variable R")
legend("R = 1", "R = 0.75", "R = 0.5")