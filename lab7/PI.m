clear all; close all;

% ?????????????????????????????????????????????????????????????
% PI
% Odpowiedz skokowa
%% *****************************************
k = 1; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
[y1 t1] = step(g, 100);

k = 5; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
[y2 t2] = step(g, 100);

k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
[y3 t3] = step(g, 100);

figure(1)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1','k = 5','k = 10')

%% *****************************************
k = 10; Ti = 10;
g = tf([k*Ti, k], [Ti, 0]);
[y1 t1] = step(g, 100);

k = 10; Ti = 15;
g = tf([k*Ti, k], [Ti, 0]);
[y2 t2] = step(g, 100);

k = 10; Ti = 40;
g = tf([k*Ti, k], [Ti, 0]);
[y3 t3] = step(g, 100);

figure(2)
plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Odpowiedz skokowa przy zmiennym czasie zdwojenia')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('Ti = 10','Ti = 15','Ti = 40')



