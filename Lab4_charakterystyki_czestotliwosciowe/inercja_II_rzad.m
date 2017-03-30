close all; clear all;

% Obiekt inercyjny II rzedu
% ************************************************************************
% Charakterystyki Nyquista
% ************************************************************************
figure(1)
k=1;
T1=0.1;
T2=10;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g), hold on

k=0.5;
T1=0.1;
T2=10;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g)

k=2;
T1=0.1;
T2=10;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g)

grid on
title('Charakterystyki Nyquista przy zmiennym wzmocnieniu')
legend('k=1','k=5','k=10')
% ************************************************************************
figure(2)
k = 1; T1 = 1; T2 = 1;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g), hold on

k = 1; T1 = 10; T2 = 1;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g)

k = 1; T1 = 100; T2 = 1;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g)

grid on
title('Charakterystyki Nyquista przy zmiennej stalej czasowej T1')
legend('T1=1','T1=10','T1=100')
% ************************************************************************
figure(3)
k = 1; T1 = 1; T2 = 1;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g), hold on

k = 1; T1 = 1; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g)

k = 1; T1 = 1; T2 = 100;
g = tf([k], [T1*T2, T1 + T2,1] );
nyquist(g)

grid on
title('Charakterystyki Nyquista przy zmiennej stalej czasowej T2')
legend('T2=1','T2=10','T2=100')
% ************************************************************************
% Charakterystyki Bodego
% ************************************************************************
figure(4)
k = 1; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g), hold on

k = 5; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g)

k = 10; T1 =10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
legend('k=1','k=5','k=10')
% ************************************************************************
figure(5)
k = 1; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g), hold on

k = 1; T1 = 20; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g)

k = 1; T1 = 40; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej T1')
legend('T1=5','T1=20','T1=40')
% ************************************************************************
figure(6)
k = 1; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g), hold on

k = 1; T1 = 10; T2 = 20;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g)

k = 1; T1 = 10; T2 = 40;
g = tf([k], [T1*T2, T1 + T2,1] );
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej T2')
legend('T2=10','T2=20','T2=40')