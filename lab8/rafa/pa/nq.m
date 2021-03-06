function [] = nq( k,Ti,Td )
T = 0.01
Lr = [k*(Ti*T+Td*Ti) k*(T+Ti) k];
Mr = [Ti*T Ti 0];

[Lo] = 10;
[Mo] = [1 2 2 1];
[L,M] = series(Lr,Mr,Lo,Mo);
subplot(1,2,1);
nyquist(L,M);
subplot(1,2,2);
step(L,M);
xlabel('P');
ylabel('Q');


end

