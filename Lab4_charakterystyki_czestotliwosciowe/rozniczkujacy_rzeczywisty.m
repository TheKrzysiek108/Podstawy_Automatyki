clear all; close all;

% Obiekt rozniczkujacy rzeczywisty
% ************************************************************************
% Charakterystyka Nyquista
% ************************************************************************
figure(1)
T = 10; Td = 30;
g = tf([Td 0], [T 1]);
nyquist(g), hold on

T = 10; Td = 50;
g = tf([Td 0], [T 1]);
nyquist(g)

T = 10; Td = 80;
g = tf([Td 0], [T 1]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennej stalej rozniczkowania')


legend('Td = 30', 'Td = 50', 'Td = 80')
% ************************************************************************
figure(2)
T = 10; Td = 10;
g = tf([Td 0], [T 1]);
nyquist(g), hold on

T = 20; Td = 10;
g = tf([Td 0], [T 1]);
nyquist(g)

T = 30; Td = 10;
g = tf([Td 0], [T 1]);
nyquist(g)


grid on
title('Charakterystyka Nyquista przy zmiennej stalej czasowej')


legend('T = 10', 'T = 20', 'T = 30')
% ************************************************************************
% Charakterystyki Bodego
% ************************************************************************
figure(3)
T = 10; Td = 5;
g = tf([Td 0], [T 1]);
bode(g), hold on

T = 10; Td = 10;
g = tf([Td 0], [T 1]);
bode(g)

T = 10; Td = 15;
g = tf([Td 0], [T 1]);
bode(g)


grid on
title('Charakterystyki Bodego przy zmiennej stalej rozniczkowania')


legend('Td = 5', 'Td = 10', 'Td = 15')
% ************************************************************************
figure(4)
T = 10; Td = 10;
g = tf([Td 0], [T 1]);
bode(g), hold on

T = 20; Td = 10;
g = tf([Td 0], [T 1]);
bode(g)

T = 30; Td = 10;
g = tf([Td 0], [T 1]);
bode(g)


grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej')


legend('T = 10', 'T = 20', 'T = 30')
