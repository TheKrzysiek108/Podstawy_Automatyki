clear all; close all;

% Obiekt inercyjny I rzedu
% ************************************************************************
% Charakterystyka skokowa
% ************************************************************************
figure(1)
k = 1; T = 5;
g = tf([k], [T 1]);
[y1 t1] = step(g, 100);

k = 1 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = step(g, 100);

k = 1 ; T = 15;
g = tf([k], [T 1]);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 5', 'T = 10', 'T = 15')
% ************************************************************************
figure(2)
k = 1; T = 10;
g = tf([k], [T 1]);
[y1 t1] = step(g, 100);

k = 5 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = step(g, 100);

k = 10 ; T = 10;
g = tf([k], [T 1]);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1', 'k = 5', 'k = 10')
% ************************************************************************
% Charakterystyka impulsowa
% ************************************************************************
figure(3)
k = 1; T = 5;
g = tf([k], [T 1]);
[y1 t1] = impulse(g, 100);

k = 1 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = impulse(g, 100);

k = 1 ; T = 15;
g = tf([k], [T 1]);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 5', 'T = 10', 'T = 15')
% ************************************************************************
figure(4)
k = 1; T = 10;
g = tf([k], [T 1]);
[y1 t1] = impulse(g, 100);

k = 5 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = impulse(g, 100);

k = 10 ; T = 10;
g = tf([k], [T 1]);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1', 'k = 5', 'k = 10')
