close all; clear all;

% Obiekt inercyjny II rzedu
% ************************************************************************
% Charakterystyka skokowa
% ************************************************************************
figure(1)
k = 1; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y1 t1] = step(g, 100);

k = 5; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y2 t2] = step(g, 100);

k = 10; T1 =10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k=1','k=5','k=10')
% ************************************************************************
figure(2)
k = 1; T1 = 5; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y1 t1] = step(g, 100);

k = 1; T1 = 20; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y2 t2] = step(g, 100);

k = 1; T1 = 40; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej czasowej T1')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T1=5','T1=20','T1=40')
% ************************************************************************
figure(3)
k = 1; T1 = 10; T2 = 5;
g = tf([k], [T1*T2, T1 + T2,1] );
[y1 t1] = step(g, 100);

k = 1; T1 = 10; T2 = 20;
g = tf([k], [T1*T2, T1 + T2,1] );
[y2 t2] = step(g, 100);

k = 1; T1 = 10; T2 = 40;
g = tf([k], [T1*T2, T1 + T2,1] );
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej czasowej T2')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T2=5','T2=20','T2=40')
% ************************************************************************
% Charakterystyka impulsowa
% ************************************************************************
figure(4)
k = 1; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y1 t1] = impulse(g, 100);

k = 5; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y2 t2] = impulse(g, 100);

k = 10; T1 =10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k=1','k=5','k=10')
% ************************************************************************
figure(5)
k = 1; T1 = 10; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y1 t1] = impulse(g, 100);

k = 1; T1 = 20; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y2 t2] = impulse(g, 100);

k = 1; T1 = 40; T2 = 10;
g = tf([k], [T1*T2, T1 + T2,1] );
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej czasowej T1')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T1=5','T1=20','T1=40')
% ************************************************************************
figure(6)
k = 1; T1 = 10; T2 = 5;
g = tf([k], [T1*T2, T1 + T2,1] );
[y1 t1] = impulse(g, 100);

k = 1; T1 = 10; T2 = 20;
g = tf([k], [T1*T2, T1 + T2,1] );
[y2 t2] = impulse(g, 100);

k = 1; T1 = 10; T2 = 40;
g = tf([k], [T1*T2, T1 + T2,1] );
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej czasowej T2')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T2=5','T2=20','T2=40')