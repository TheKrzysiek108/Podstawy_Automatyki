clear all; close all;

% ?????????????????????????????????????????????????????????????
% PID
% Odpowiedz skokowa
%% *****************************************
k = 2; T = 2; Td = 20; Ti=10;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 20);

k = 5; T = 2; Td = 20; Ti=10;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 20);

k = 10; T = 2; Td = 20; Ti=10;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 20);

figure(1)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennej sta³ej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 2','k = 5','k = 10')

%% *****************************************
k = 5; T = 0.5; Td = 20; Ti=2;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 10);

k = 5; T = 1; Td = 20; Ti=2;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 10);

k = 5; T = 2; Td = 20; Ti=2;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 10);

figure(2)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym czasie wyprzedzenia')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 10','T = 15','T = 40')

%% *****************************************

k = 5; T = 2; Td = 20; Ti=2;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 20);

k = 5; T = 2; Td = 50; Ti=2;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 20);

k = 5; T = 2; Td = 100; Ti=2;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 20);

figure(3)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennej sta³ej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Td = 20','Td = 50','Td = 100')

%% *****************************************
k = 5; T = 2; Td = 20; Ti=0.5;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y1 t1] = step(g, 20);

k = 5; T = 2; Td = 20; Ti=1;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y2 t2] = step(g, 20);

k = 5; T = 2; Td = 20; Ti=10;
g = tf([k*T*Ti+Td*Ti*k,k*Ti+k*T,k], [T*Ti, Ti, 0] );
[y3 t3] = step(g, 20);

figure(4)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennej sta³ej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Ti = 0.5','Ti = 1','Ti = 10')