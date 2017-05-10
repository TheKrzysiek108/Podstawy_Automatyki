clear all;
close all;

k = 2;
Ti = 1;
Td = 0.5;

figure(1)

nq(k,Ti,Td)
title('niestabilny');
% hr(k,Ti,Td)
legend('k=2, Ti=1, Td=0.5')

Ti = 7;

figure(2)
nq(k,Ti,Td)
title('stabilny');
% hr(k,Ti,Td)
legend('k=2, Ti=7, Td=0.5')

Ti = 1;
Td = 1;

figure(3)
nq(k,Ti,Td)
title('stabilny');
% hr(k,Ti,Td)
legend('k=2, Ti=1, Td=1')

Td = 0.5;
k = 0.15;

figure(4)
nq(k,Ti,Td)
title('stabilny');
% hr(k,Ti,Td)
legend('k=0.15, Ti=1, Td=0.5')