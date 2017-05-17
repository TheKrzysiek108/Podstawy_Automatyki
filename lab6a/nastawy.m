clear all;
close all;

%% Oscylacje sta³e
k=5.4
Ti =1e+6;
Td = 0;

sim('uklad')
plot(simout);
title('Odpowiedz skokowa');
[x, y]=ginput(2)
%% P Podst. Z-N
Tosc=x(2)-x(1);
k=0.5*k;
sim('uklad')
plot(simout);
title('Odpowiedz skokowa'); 
calka =  sum((simout.Data - 1).^2)
%% PI Podst. Z-N
Tosc=x(2)-x(1);
k=0.45*k;
Ti=0.83*Tosc;
sim('uklad')

plot(simout);title('Odpowiedz skokowa');
calka =  sum((simout.Data - 1).^2)
%% PD Podst. Z-N
Tosc=x(2)-x(1);
k=0.45*k;
Td=0.125*Tosc;

sim('uklad')
plot(simout);
title('Odpowiedz skokowa'); 
calka =  sum((simout.Data - 1).^2)
%% PID Podst. Z-N
Tosc=x(2)-x(1);
k=0.6*k;
Ti=0.5*Tosc;
Td=0.125*Tosc;

sim('uklad')
plot(simout);
title('Odpowiedz skokowa'); 
calka =  sum((simout.Data - 1).^2)
%% PID Mod. Z-N male przeregulowanie
Tosc=x(2)-x(1);
k=0.33*k;
Ti=0.5*Tosc;
Td=0.33*Tosc;

sim('uklad')

plot(simout);
title('Odpowiedz skokowa'); 
calka =  sum((simout.Data - 1).^2)
%% PID Mod. Z-N bez przeregulowania
Tosc=x(2)-x(1);
k=0.6*k;
Ti=0.5*Tosc;
Td=0.125*Tosc;

sim('uklad')
plot(simout);
title('Odpowiedz skokowa'); 
calka =  sum((simout.Data - 1).^2)