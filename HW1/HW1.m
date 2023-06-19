% Data
L = 0.5; % Henrys
K = .001; % torque constant
J = 0.01; % kg.m^2
R1 = 1.0; % Ohms
R2 = 0.75;
R3 = 0.5;
B1 = 0.1;
B2 = 0.25;
B3 = 0.5;

% question
%% angular with B 0.1 0.25 0.5
% System 1
A = [-R1/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_1 = ss(A,B,C,D)

% System 2
A = [-R1/L -K/L; K/J -B2/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_2 = ss(A,B,C,D)

% System 3
A = [-R1/L -K/L; K/J -B3/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_3 = ss(A,B,C,D)
step(sys_1,sys_2,sys_3)
%% current with B 0.1 0.25 0.5
% System 1
A = [-R1/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [1 0];
D = [0];
sys_1 = ss(A,B,C,D)

% System 2
A = [-R1/L -K/L; K/J -B2/J]
B = [1/L; 0]
C = [1 0];
D = [0];
sys_2 = ss(A,B,C,D)

% System 3
A = [-R1/L -K/L; K/J -B3/J]
B = [1/L; 0]
C = [1 0];
D = [0];
sys_3 = ss(A,B,C,D)
step(sys_1,sys_2,sys_3)
%% angular with R 1 0.75 0.5
% System 1
A = [-R1/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_1 = ss(A,B,C,D)

% System 2
A = [-R2/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_2 = ss(A,B,C,D)

% System 3
A = [-R3/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_3 = ss(A,B,C,D)
step(sys_1,sys_2,sys_3)
%% current with R 1 0.75 0.5
% System 1
A = [-R1/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [1 0];
D = [0];
sys_1 = ss(A,B,C,D)

% System 2
A = [-R2/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_2 = ss(A,B,C,D)

% System 3
A = [-R2/L -K/L; K/J -B1/J]
B = [1/L; 0]
C = [0 1];
D = [0];
sys_3 = ss(A,B,C,D)
step(sys_1,sys_2,sys_3)
