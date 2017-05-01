clear all; close all;

%  ******************************************************
%  PI
%  ******************************************************
%% Charakterystyka skokowa
k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
[y1 t1] = step(g, 100);

plot(t1, y1, 'b')
ylim([0 110])
grid on
title('Odpowiedz skokowa')
xlabel('czas [s]')
ylabel('odpowiedz')
%% Charakterystyka Nyquista
k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
nyquist(g)

grid on
title('Charakterystyka Nyquista')
%% Charakterystyka Bodego
k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
w = logspace(-3, 3, 1000); bode(g, w)

grid on
title('Charakterystyki Bodego')
%% *******************************************************
%  PD
%  *******************************************************
%% Charakterystyka skokowa
