clear all; close all;

% Obiekt inrecyjny I rzedu
% Odpowiedz skokowa
k = 1; T = 5;
g = tf([k], [T 1]);
[y1 t1] = step(g, 100);

k = 1 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = step(g, 100);

k = 1 ; T = 15;
g = tf([k], [T 1]);
[y3 t3] = step(g, 100);

figure(1)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 5', 'T = 10', 'T = 15')

k = 1; T = 10;
g = tf([k], [T 1]);
[y1 t1] = step(g, 100);

k = 5 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = step(g, 100);

k = 10 ; T = 10;
g = tf([k], [T 1]);
[y3 t3] = step(g, 100);

figure(2)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1', 'k = 5', 'k = 10')

% Odpowiedz impulsowa
k = 1; T = 5;
g = tf([k], [T 1]);
[y1 t1] = impulse(g, 100);

k = 1 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = impulse(g, 100);

k = 1 ; T = 15;
g = tf([k], [T 1]);
[y3 t3] = impulse(g, 100);

figure(3)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz impulsowa przy zmiennej sta�ej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 5', 'T = 10', 'T = 15')

k = 1; T = 10;
g = tf([k], [T 1]);
[y1 t1] = impulse(g, 100);

k = 5 ; T = 10;
g = tf([k], [T 1]);
[y2 t2] = impulse(g, 100);

k = 10 ; T = 10;
g = tf([k], [T 1]);
[y3 t3] = impulse(g, 100);

figure(4)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz impulsowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1', 'k = 5', 'k = 10')
