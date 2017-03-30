clear all; close all;

% Obiekt oscylacyjny II rzedu
% ************************************************************************
% Charakterystyki Nyquista
% ************************************************************************
figure(1)
k = 1; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g), hold on

k = 5; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g)

k = 10; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g)


grid on
title('Charakterystyki Nyquista przy zmiennym wzmocnieniu')


legend('k = 1','k = 5','k = 10')
% ************************************************************************
figure(2)
% k = 5; T0 = 10; ksi = 0;
% g = tf([k], [T0^2, 2*ksi*T0, 1] );
% nyquist(g);
% hold on

k = 5; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g)

k = 5; T0 = 10; ksi = 1;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g)

k = 5; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g)


grid on
title('Charakterystyki Nyquista przy zmiennym ksi')


% legend('ksi = 0','ksi = 0.5','ksi = 1', 'ksi = 2')
% ************************************************************************
figure(3)
k = 1; T0 = 70; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g), hold on

k = 1; T0 = 40; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g)

k = 1; T0 = 20; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
nyquist(g);


grid on
title('Charakterystyki Nyquista przy zmiennej stalej czasowej')


legend('T0 = 70','T0 = 40','T0 = 20')
% ************************************************************************
% Charakterystyki Bodego
% ************************************************************************
figure(4)
k = 1; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g), hold on

k = 5; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g)

k = 10; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g)


grid on
title('Charakterystyki Bodego przy zmiennym wzmocnieniu')


legend('k = 1','k = 5','k = 10')
% ************************************************************************
figure(5)
k = 1; T0 = 10; ksi = 0;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g), hold on

k = 1; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g)

k = 1; T0 = 10; ksi = 1;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g)

k = 1; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g)


grid on
title('Charakterystyki Bodego przy zmiennym ksi')


legend('ksi = 0','ksi = 0.5','ksi = 1', 'ksi = 2')
% ************************************************************************
figure(6)
k = 1; T0 = 1; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g), hold on

k = 1; T0 = 7; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g)

k = 1; T0 = 20; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
bode(g);


grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej')


legend('T0 = 5','T0 = 15','T0 = 30')
