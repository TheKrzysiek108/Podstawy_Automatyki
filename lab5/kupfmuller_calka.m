close all; clear all;
krok=0.3;
load pomiary;
s=length(pomiary);
t=linspace(0, 300, length(pomiary));
Taupocz = 12; Taukon=15; Taukrok=0.5; Tau=0;
T1pocz=10; T1kon=20; T1krok=0.5; T1=0;
T2pocz=30; T2kon=34; T2krok=0.5; T2=0;
Kpocz=1.0; Kkon=1.1; Kkrok=0.02; K=0;
calkamin=inf;
for iTau=Taupocz:Taukrok:Taukon
    [lp, mp]=pade(iTau,3);
    for iT1=T1pocz:T1krok:T1kon
        for iT2=T2pocz:T2krok:T2kon
            for iK=Kpocz:Kkrok:Kkon
                [l, m]=series(iK, [iT1*iT2, iT1+iT2, 1], lp, mp);
                iy=step(l, m, t);
                blad=iy'-pomiary;
                blad2=blad.^2;
                
                calka=krok*sum(blad2);

                if calka<calkamin
                    calkamin=calka;
                    y=iy;
                    Tau=iTau;
                    T1=iT1;
                    T2=iT2;
                    K=iK;
                end
            end
        end
    end
end
 figure(1)
lsim([1], [1 0], blad2, t);
% figure(2)
% plot(t, pomiary, t, y');
% Tau, T1, T2, K,
% printsys(K*l,m)
% bladn=y'-pomiary;
% calkan=sum(bladn.^2)