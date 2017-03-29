clear all; close all;

% Obiekt calkujacy z inercja I rzedu
% ************************************************************************
% Charakterystyki Nyquista
% ************************************************************************
figure(1)
k = 1; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g), hold on

k = 5; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g)

k = 10; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g)


grid on
title('Charakterystyki Nyquista przy zmiennym wzmocnieniu')


legend('k = 1','k = 5','k = 10')
% ************************************************************************
figure(2)
k = 1; T = 10; Ti = 0.5;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g), hold on

k = 1; T = 10; Ti = 1;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g)

k = 1; T = 10; Ti = 1.5;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g)


grid on
title('Charakterystyki Nyquista przy zmiennej stalej calkowania')


legend('Ti = 0.5','Ti = 1','Ti = 1.5')
% ************************************************************************
figure(3)
k = 1; T = 1; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g), hold on

k = 1; T = 20; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g)

k = 1; T = 60; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
nyquist(g)

grid on
title('Charakterystyki Nyquista przy zmiennej stalej czasowej')
legend('T = 1','T = 7','T = 50')
% ************************************************************************
% Charakterystyki Bodego
% ************************************************************************
figure(4)
k = 1; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
bode(g), hold on

k = 5; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
bode(g)

k = 10; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
legend('k = 1','k = 5','k = 10')
% ************************************************************************
figure(5)
k = 1; T = 10; Ti = 0.5;
g = tf([k], [T*Ti, Ti, 0] );
bode(g), hold on

k = 1; T = 10; Ti = 1;
g = tf([k], [T*Ti, Ti, 0] );
bode(g)

k = 1; T = 10; Ti = 1.5;
g = tf([k], [T*Ti, Ti, 0] );
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennej stalej calkowania')
legend('Ti = 0.5','Ti = 1','Ti = 1.5')
% ************************************************************************
figure(6)
k = 1; T = 1; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
bode(g), hold on

k = 1; T = 7; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
bode(g)

k = 1; T = 20; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej')
legend('T = 5','T = 15','T = 30')
