clear all; close all;

% ?????????????????????????????????????????????????????????????
% PID
% Odpowiedz skokowa
%% *****************************************
k = 20; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 20);

k = 50; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 20);

k = 70; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 20);

figure(1)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 20','k = 50','k = 70')

%% *****************************************
k = 0.1; T = 0.5; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 10);

k = 0.1; T = 1; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 10);

k = 0.1; T = 2; Td = 20; Ti=25;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 10);

figure(2)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 10','T = 15','T = 40')

%% *****************************************

k = 5; T = 2; Td = 20; Ti=110;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 20);

k = 5; T = 2; Td = 50; Ti=110;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 20);

k = 5; T = 2; Td = 100; Ti=110;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 20);

figure(3)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym czasie wyprzedzenia')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Td = 20','Td = 50','Td = 100')

%% *****************************************
k = 10; T = 2; Td = 20; Ti=20;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 20);

k = 10; T = 2; Td = 20; Ti=50;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 20);

k = 10; T = 2; Td = 20; Ti=200;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 20);

figure(4)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym czasie zdwojenia')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Ti = 20','Ti = 50','Ti = 200')