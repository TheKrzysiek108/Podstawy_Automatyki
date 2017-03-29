clear all; close all;

% Obiekt inercyjny I rzedu
% ************************************************************************
% Charakterystyka Nyquista
% ************************************************************************
% figure(1)
% k = 1; T = 15;
% g = tf([k], [T 1]);
% nyquist(g), hold on
% 
% k = 1 ; T = 30;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% k = 1 ; T = 50;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% grid on
% title('Charakterystyka Nyquista przy zmiennej stalej czasowej')
% legend('T = 15', 'T = 30', 'T = 50')
% % ************************************************************************
% figure(2)
% k = 1; T = 10;
% g = tf([k], [T 1]);
% nyquist(g), hold on
% 
% k = 5 ; T = 10;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% k = 10 ; T = 10;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% grid on
% title('Charakterystyka Nyquista przy zmiennym wzmocnieniu')
% legend('k = 1', 'k = 5', 'k = 10')
% % ************************************************************************
% % Charakterystyki Bodego
% % ************************************************************************
figure(3)
k = 1; T = 5;
g = tf([k], [T 1]);
bode(g), hold on
asymp(g)
k = 1 ; T = 10;
g = tf([k], [T 1]);
bode(g)

k = 1 ; T = 15;
g = tf([k], [T 1]);
bode(g)

grid on
title('Charakterystyki Bodego przy zmiennej stalej czasowej')
legend('T = 5', 'T = 10', 'T = 15')
% ************************************************************************
% figure(4)
% k = 1; T = 100;
% g = tf([k], [T 1]);
% bode(g), hold on
% 
% k = 5 ; T = 100;
% g = tf([k], [T 1]);
% bode(g)
% 
% k = 10 ; T = 100;
% g = tf([k], [T 1]);
% bode(g)
% 
% grid on
% title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
% legend('k = 1', 'k = 5', 'k = 10')
