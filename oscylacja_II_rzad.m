clear all; close all;

% Obiekt oscylacyjny II rzedu
% Odpowiedz skokowa
% *****************************************
k = 1; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y1 t1] = step(g, 100);

k = 5; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y2 t2] = step(g, 100);

k = 10; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y3 t3] = step(g, 100);

figure(1)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1','k = 5','k = 10')
% *****************************************
k = 1; T0 = 10; ksi = 0;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y1 t1] = step(g, 100);

k = 1; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y2 t2] = step(g, 100);

k = 1; T0 = 10; ksi = 1;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y3 t3] = step(g, 100);

k = 1; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y4 t4] = step(g, 100);

figure(2)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b', t4, y4, 'm')
grid on
title('Odpowiedz skokowa przy zmiennym ksi')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('ksi = 0','ksi = 0.5','ksi = 1', 'ksi = 2')
% *****************************************
k = 1; T0 = 1; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y1 t1] = step(g, 100);

k = 1; T0 = 7; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y2 t2] = step(g, 100);

k = 1; T0 = 20; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y3 t3] = step(g, 100);;

figure(3)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennej sta³ej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T0 = 5','T0 = 15','T0 = 30')
% Odpowiedz impulsowa
% *****************************************
k = 1; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y1 t1] = impulse(g, 100);

k = 5; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y2 t2] = impulse(g, 100);

k = 10; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y3 t3] = impulse(g, 100);

figure(4)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz impulsowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1','k = 5','k = 10')
% *****************************************
k = 1; T0 = 10; ksi = 0;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y1 t1] = impulse(g, 100);

k = 1; T0 = 10; ksi = 0.5;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y2 t2] = impulse(g, 100);

k = 1; T0 = 10; ksi = 1;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y3 t3] = impulse(g, 100);

k = 1; T0 = 10; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y4 t4] = impulse(g, 100);

figure(5)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b', t4, y4, 'm')
grid on
title('Odpowiedz impulsowa przy zmiennym ksi')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('ksi = 0','ksi = 0.5','ksi = 1', 'ksi = 2')
% *****************************************
k = 1; T0 = 1; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y1 t1] = impulse(g, 100);

k = 1; T0 = 7; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y2 t2] = impulse(g, 100);

k = 1; T0 = 20; ksi = 2;
g = tf([k], [T0^2, 2*ksi*T0, 1] );
[y3 t3] = impulse(g, 100);;

figure(6)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz impulsowa przy zmiennej sta³ej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T0 = 5','T0 = 15','T0 = 30')
