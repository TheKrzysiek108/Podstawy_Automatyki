clear all; close all;

% ?????????????????????????????????????????????????????????????
% PID
% Charakterystyka Nyquista
%% *****************************************
figure(1)
k = 10; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)
hold on

k = 30; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)

k = 50; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym wzmocnieniu')
legend('k = 10','k = 30','k = 50')

%% *****************************************
figure(2)
k = 20; T = 2; Td = 20; Ti=70;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)
hold on

k = 20; T = 2; Td = 40; Ti=70;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)

k = 20; T = 2; Td = 60; Ti=70;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym czasie wyprzedzenia')
legend('Td = 20','Td = 40','Td = 60')

%% *****************************************
figure
k = 20; T = 0.5; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)
hold on

k = 20; T = 1; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)

k = 20; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)

grid on
title('Charakterystyka Nyquista przy zmiennej stalej czasowej')
legend('T = 0.5','T = 1','T = 2')

%% *****************************************
figure
k = 20; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)
hold on

k = 20; T = 2; Td = 20; Ti=50;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)

k = 20; T = 2; Td = 20; Ti=10000;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym czasie zdwojenia')
legend('Ti = 25','Ti = 50','Ti = 70')
%% Charakterystyki Bodego
%% ***************************************************************
figure(3)
k = 10; T = 2; Td = 20; Ti=300;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 20; T = 2; Td = 20; Ti=300;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
bode(g, w)

k = 40; T = 2; Td = 20; Ti=300;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
bode(g, w)

grid on
title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
legend('k = 10','k = 20','k = 40')

%% ***************************************************************
figure(4)
k = 20; T = 2; Td = 20; Ti=500;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 20; T = 2; Td = 50; Ti=500;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)

k = 20; T = 2; Td = 100; Ti=500;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)


grid on
title('Charakterystyki Bodego przy zmiennym czasie wyprzedzenia')
legend('Td = 20','Td = 50','Td = 100')

%% *****************************************
figure
k = 20; T = 0.1; Td = 50; Ti=400;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 20; T = 1; Td = 50; Ti=400;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)

k = 20; T = 5; Td = 50; Ti=400;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)


grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej')
legend('T = 0.1','T = 1','T = 5')
%% *****************************************
figure
k = 20; T = 1; Td = 20; Ti=100;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 20; T = 1; Td = 20; Ti=500;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)

k = 20; T = 1; Td = 20; Ti=1000;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)


grid on
title('Charakterystyki Bodego przy zmiennym czasie zdwojenia')
legend('Ti = 0.1','Ti = 1','Ti = 5')