clear all; close all;

% ?????????????????????????????????????????????????????????????
% PI
% Charakterystyka Nyquista
%% *****************************************
figure(1)
k = 1; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)
hold on

k = 5; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)

k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym wzmocnieniu')
legend('k = 1','k = 5','k = 10')

%% *****************************************
figure(2)
k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)
hold on

k = 10; Ti = 20;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)

k = 10; Ti = 40;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennym czasie zdwojenia')
legend('Ti = 10','Ti = 20','Ti = 40')

% Charakterystyki Bodego
%% *****************************************
figure(3)
k = 1; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 5; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
bode(g, w)

k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
bode(g, w)

grid on
title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
legend('k = 1','k = 5','k = 10')

%% *****************************************
figure(4)
k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)
hold on

k = 10; Ti = 15;
g = tf([k*Ti, k], [Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)

k = 10; Ti = 40;
g = tf([k*Ti, k], [Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)


grid on
title('Charakterystyki Bodego przy zmiennym czasie zdwojenia')
legend('Ti = 10','Ti = 15','Ti = 40')
