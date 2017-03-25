clear all; close all;

% Obiekt calkujacy z inercja I rzedu
% ************************************************************************
% Charakterystyka skokowa
% ************************************************************************
figure(1)
k = 1; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 100);

k = 5; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 100);

k = 10; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1','k = 5','k = 10')
% ************************************************************************
figure(2)
k = 1; T = 10; Ti = 0.5;
g = tf([k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 100);

k = 1; T = 10; Ti = 1;
g = tf([k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 100);

k = 1; T = 10; Ti = 1.5;
g = tf([k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej calkowania')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Ti = 0.5','Ti = 1','Ti = 1.5')
% ************************************************************************
figure(3)
k = 1; T = 1; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 100);

k = 1; T = 20; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 100);

k = 1; T = 60; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 1','T = 7','T = 50')
% ************************************************************************
% Charakterystyka impulsowa
% ************************************************************************
figure(4)
k = 1; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y1 t1] = impulse(g, 100);

k = 5; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y2 t2] = impulse(g, 100);

k = 10; T = 10; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1','k = 5','k = 10')
% ************************************************************************
figure(5)
k = 1; T = 10; Ti = 0.5;
g = tf([k], [T*Ti, Ti, 0] );
[y1 t1] = impulse(g, 100);

k = 1; T = 10; Ti = 1;
g = tf([k], [T*Ti, Ti, 0] );
[y2 t2] = impulse(g, 100);

k = 1; T = 10; Ti = 1.5;
g = tf([k], [T*Ti, Ti, 0] );
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej calkowania')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Ti = 0.5','Ti = 1','Ti = 1.5')
% ************************************************************************
figure(6)
k = 1; T = 1; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y1 t1] = impulse(g, 100);

k = 1; T = 7; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y2 t2] = impulse(g, 100);

k = 1; T = 20; Ti = 2;
g = tf([k], [T*Ti, Ti, 0] );
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 5','T = 15','T = 30')
