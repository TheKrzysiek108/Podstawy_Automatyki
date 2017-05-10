clear all; close all;

G = tf(10, [1, 2, 2, 1]);

%%
% Nyquist
T = 0.01;
k = 2; Ti = 1; Td = 0.5; % parametry regulatora
P = nyquistoptions;
P.ShowFullContour = 'off'; 

Lr = [k*(Ti*T+Td*Ti) k*(T+Ti) k];
Mr = [Ti*T Ti 0];
Gr = tf(Lr, Mr)
Go = series(Gr, G); % uklad otwarty
nyquistplot(Go, P);

figure(2)
nyquistplot(Go, P);
axis([-2 0 -2 2])

%% k
T = 0.01;
k = 0.2; Ti = 1; Td = 0.5; % parametry regulatora
P = nyquistoptions;
P.ShowFullContour = 'off'; 

Lr = [k*(Ti*T+Td*Ti) k*(T+Ti) k];
Mr = [Ti*T Ti 0];
Gr = tf(Lr, Mr)
Go = series(Gr, G); % uklad otwarty
figure(3);
nyquistplot(Go, P);

figure(4);
nyquistplot(Go, P);
axis([-2 0 -2 2])

figure(12)
impulse(feedback(Go, 1, -1))
title('Odpowiedz impulsowa dla zmiany k')
%% Ti
T = 0.01;
k = 2; Ti = 20; Td = 0.5; % parametry regulatora
P = nyquistoptions;
P.ShowFullContour = 'off'; 

Lr = [k*(Ti*T+Td*Ti) k*(T+Ti) k];
Mr = [Ti*T Ti 0];
Gr = tf(Lr, Mr)
Go = series(Gr, G); % uklad otwarty
figure(5);
nyquistplot(Go, P);

figure(6);
nyquistplot(Go, P);
axis([-2 0 -2 2])

figure(11)
impulse(feedback(Go, 1, -1))
title('Odpowiedz impulsowa dla zmiany Ti')
%% Td
T = 0.01;
k = 2; Ti = 1; Td = 1; % parametry regulatora
P = nyquistoptions;
P.ShowFullContour = 'off'; 

Lr = [k*(Ti*T+Td*Ti) k*(T+Ti) k];
Mr = [Ti*T Ti 0];
Gr = tf(Lr, Mr)
Go = series(Gr, G); % uklad otwarty
figure(7);
nyquistplot(Go, P);

figure(8);
nyquistplot(Go, P);
axis([-2 0 -2 2])

figure(10)
impulse(feedback(Go, 1, -1))
title('Odpowiedz impulsowa dla zmiany Td')