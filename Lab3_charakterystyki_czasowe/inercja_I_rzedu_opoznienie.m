clear all; close all;

% Obiekt inercyjny I rzedu z opoznieniem
% ************************************************************************
% Odpowiedz skokowa
% ************************************************************************
n = 8;
figure(1)
tau = 5; k = 1; T = 10;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y1 t1] = step(g, 100);

tau = 5; k = 1; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y2 t2] = step(g, 100);

tau = 5; k = 1; T = 20;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 10', 'T = 20', 'T = 30')
% ************************************************************************
figure(2)
tau = 5; k = 1; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y1 t1] = step(g, 100);

tau = 5; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y2 t2] = step(g, 100);

tau = 5; k = 10; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1', 'k = 5', 'k = 10')
% ************************************************************************
figure(3)
tau = 10; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y1 t1] = step(g, 100);

tau = 20; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y2 t2] = step(g, 100);

tau = 40; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y3 t3] = step(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka skokowa przy zmiennym opoznieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('tau = 10', 'tau = 20', 'tau = 40')
% ************************************************************************
% Odpowiedz impulsowa
% ************************************************************************
n = 20;
figure(4)
tau = 5; k = 1; T = 10;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y1 t1] = impulse(g, 100);

tau = 5; k = 1; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y2 t2] = impulse(g, 100);

tau = 5; k = 1; T = 20;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennej stalej czasowej')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('T = 10', 'T = 20', 'T = 30')
% ************************************************************************
% n = 20;
figure(5)
tau = 5; k = 1; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y1 t1] = impulse(g, 100);

tau = 5; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y2 t2] = impulse(g, 100);

tau = 5; k = 10; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennym wzmocnieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('k = 1', 'k = 5', 'k = 10')
% ************************************************************************
% n = 20;
figure(6)
tau = 10; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y1 t1] = impulse(g, 100);

tau = 20; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y2 t2] = impulse(g, 100);

tau = 40; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
[y3 t3] = impulse(g, 100);

plot(t1, y1, 'r', t2, y2, 'g', t3, y3, 'b')
grid on
title('Charakterystyka impulsowa przy zmiennym opoznieniu')
xlabel('czas [s]')
ylabel('odpowiedz')
legend('tau = 10', 'tau = 20', 'tau = 40')