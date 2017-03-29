clear all; close all;

% Obiekt inercyjny I rzedu z opoznieniem
% ************************************************************************
% Charakterystyki Nyquista
% ************************************************************************
n = 8;
% figure(1)
% tau = 5; k = 1; T = 10;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% nyquist(g), hold on
% 
% tau = 5; k = 1; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% nyquist(g)
% 
% tau = 5; k = 1; T = 20;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% nyquist(g)
% 
% grid on
% title('Charakterystyki Nyquista przy zmiennej stalej czasowej')
% legend('T = 10', 'T = 20', 'T = 30')
% ************************************************************************
% figure(2)
% tau = 5; k = 1; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% nyquist(g), hold on
% 
% tau = 5; k = 5; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% nyquist(g)
% 
% tau = 5; k = 10; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% nyquist(g)
% 
% grid on
% title('Charakterystyki Nyquista przy zmiennym wzmocnieniu')
% legend('k = 1', 'k = 5', 'k = 10')
% ************************************************************************
figure(3)
tau = 10; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
nyquist(g), hold on

tau = 20; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
nyquist(g)

tau = 40; k = 5; T = 15;
[del_l, del_m] = pade(tau, n);
[licz, mian] = series(del_l, del_m, [k], [T, 1]);
g = tf(licz, mian);
nyquist(g)

grid on
title('Charakterystyki Nyquista przy zmiennym opoznieniu')
legend('tau = 10', 'tau = 20', 'tau = 40')
% ************************************************************************
% Charakterystyki Bodego
% ************************************************************************
% n = 20;
% figure(4)
% tau = 5; k = 1; T = 10;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g), hold on
% 
% tau = 5; k = 1; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g)
% 
% tau = 5; k = 1; T = 20;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g)
% 
% grid on
% title('Charakterystyki Bodego przy zmiennej stalej czasowej')
% legend('T = 10', 'T = 20', 'T = 30')
% % ************************************************************************
% % n = 20;
% figure(5)
% tau = 5; k = 1; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g), hold on
% 
% tau = 5; k = 5; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g)
% 
% tau = 5; k = 10; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g)
% 
% grid on
% title('Charakterystyki Bodego przy zmiennym wzmocnieniu')
% legend('k = 1', 'k = 5', 'k = 10')
% % ************************************************************************
% % n = 20;
% figure(6)
% tau = 10; k = 5; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g), hold on
% 
% tau = 20; k = 5; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g)
% 
% tau = 40; k = 5; T = 15;
% [del_l, del_m] = pade(tau, n);
% [licz, mian] = series(del_l, del_m, [k], [T, 1]);
% g = tf(licz, mian);
% bode(g)
% 
% grid on
% title('Charakterystyki Bodego przy zmiennym opoznieniu')
% legend('tau = 10', 'tau = 20', 'tau = 40')