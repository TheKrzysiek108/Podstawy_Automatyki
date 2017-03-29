clear all; close all;

% Obiekt rozniczkujacy rzeczywisty
% ************************************************************************
% Charakterystyka skokowa
% ************************************************************************
figure(1)
T = 10; Td = 30;
g = tf([Td 0], [T 1]);
[y1 t1] = step(g, 100);

T = 10; Td = 50;
g = tf([Td 0], [T 1]);
[y2 t2] = step(g, 100);

T = 10; Td = 80;
g = tf([Td 0], [T 1]);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej rozniczkowania')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Td = 30', 'Td = 50', 'Td = 80')
% ************************************************************************
figure(2)
T = 10; Td = 10;
g = tf([Td 0], [T 1]);
[y1 t1] = step(g, 100);

T = 20; Td = 10;
g = tf([Td 0], [T 1]);
[y2 t2] = step(g, 100);

T = 30; Td = 10;
g = tf([Td 0], [T 1]);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej calkowania')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 10', 'T = 20', 'T = 30')
% ************************************************************************
% Charakterystyka impulsowa
% ************************************************************************
figure(3)
T = 10; Td = 5;
g = tf([Td 0], [T 1]);
[y1 t1] = impulse(g, 100);

T = 10; Td = 10;
g = tf([Td 0], [T 1]);
[y2 t2] = impulse(g, 100);

T = 10; Td = 15;
g = tf([Td 0], [T 1]);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej rozniczkowania')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Td = 5', 'Td = 10', 'Td = 15')
% ************************************************************************
figure(4)
T = 10; Td = 10;
g = tf([Td 0], [T 1]);
[y1 t1] = impulse(g, 100);

T = 20; Td = 10;
g = tf([Td 0], [T 1]);
[y2 t2] = impulse(g, 100);

T = 30; Td = 10;
g = tf([Td 0], [T 1]);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 10', 'T = 20', 'T = 30')
