clear all; close all;

% Obiekt inercyjny I rzedu
% ************************************************************************
% Charakterystyka Nyquista
% ************************************************************************
% figure(1)
% k = 1; T = 15;
% g = tf([k], [T 1]);
% nyquist(g), hold on
% 
% k = 1 ; T = 30;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% k = 1 ; T = 50;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% grid on
% title('Charakterystyka Nyquista przy zmiennej stalej czasowej')
% legend('T = 15', 'T = 30', 'T = 50')
% % ************************************************************************
% figure(2)
% k = 1; T = 10;
% g = tf([k], [T 1]);
% nyquist(g), hold on
% 
% k = 5 ; T = 10;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% k = 10 ; T = 10;
% g = tf([k], [T 1]);
% nyquist(g)
% 
% grid on
% title('Charakterystyka Nyquista przy zmiennym wzmocnieniu')
% legend('k = 1', 'k = 5', 'k = 10')
% % ************************************************************************
% % Charakterystyki Bodego
% % ************************************************************************
figure(1);

t=logspace(-3,3,10000);
k=1;
T=1;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);
hold on

k=0.5;
T=1;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);

k=2;
T=1;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);

title('Charakterystyka Bodego inercyjny I rz?d. T = const');
 
 
legend('k=1','k=0.5','k=2');

hold off;

figure(2);
k=1;
T=1;

k=1;
T=1;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);
hold on

k=1;
T=0.5;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);

k=1;
T=2;
licz = [k];
mian = [T 1];
sys = tf(licz,mian);
printsys(licz,mian);

bode(sys, t)
xlim([t(1) t(10000)]);

title('Charakterystyka Bodego inercyjny I rz?d. k = const');
 
 

legend('T=1','T=0.5','T=2');

hold off;