clear all; close all;

% ?????????????????????????????????????????????????????????????
% PI
% Charakterystyka Nyquista
%% *****************************************
figure(1)
k = 10; Td = 100; T = 10;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)
hold on

k = 30; Td = 100; T = 10;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)

k = 50; Td = 100; T = 10;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym wzmocnieniu')
legend('k = 10','k = 30','k = 50')

%% *****************************************
figure(2)
k = 10; Td = 10; T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)
hold on

k = 10; Td = 20; T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)

k = 10; Td = 40;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym czasie wyprzedzenia')
legend('Td = 10','Td = 20','Td = 40')

%% *****************************************
figure
k = 10; Td = 40; T = 1;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)
hold on

k = 10; Td = 40; T = 2;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)

k = 10; Td = 40; T = 4;
g = tf([k*T+Td*k,k], [T, 1]);
nyquist(g)

grid on
title('Charakterystyka Nyquista przy zmiennej stalej czasowej')
legend('T = 1','T = 2','T = 4')


%% Charakterystyki Bodego
%% ***************************************************************
figure(3)
k = 1; Td = 10;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 5; Td = 10;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
bode(g, w)

k = 10; Td = 10;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
bode(g, w)

grid on
title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
legend('k = 1','k = 5','k = 10')

%% *****************************************
figure(4)
k = 10; Td = 10;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 10; Td = 15;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)

k = 10; Td = 40;T = 0.1;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)


grid on
title('Charakterystyki Bodego przy zmiennym czasie wyprzedzenia')
legend('Td = 10','Td = 15','Td = 40')

%% *****************************************
figure
k = 10; Td = 40;T = 1;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 10; Td = 40;T = 2;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)

k = 10; Td = 40; T = 4;
g = tf([k*T+Td*k,k], [T, 1]);
w = logspace(-3, 3, 1000); bode(g, w)


grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej')
legend('T = 1','T = 2','T = 4')