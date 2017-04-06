close all; clear all;
krok=0.1;
load pomiary;
s=length(pomiary);
t=linspace(0, 300, length(pomiary));
Taupocz = 5; Taukon=20; Taukrok=0.2; Tau=0;
T1pocz=5; T1kon=25; T1krok=0.2; T1=0;
% T2pocz=30; T2kon=34; T2krok=0.5; T2=0;
Kpocz=1.0; Kkon=1.1; Kkrok=0.02; K=0;
calkamin=inf;
for iTau=Taupocz:Taukrok:Taukon
    [lp, mp]=pade(iTau,3);
    for iT1=T1pocz:T1krok:T1kon
%         for iT2=T2pocz:T2krok:T2kon
            for iK=Kpocz:Kkrok:Kkon
                [l, m]=series(iK, [iT1, 1], lp, mp);
                iy=step(l, m, t);
                blad=iy'-pomiary;
                blad2=blad.^2;
                
                calka=krok*sum(blad2);

                if calka<calkamin
                    calkamin=calka;
                    y=iy;
                    Tau=iTau;
                    T1=iT1;
%                     T2=iT2;
                    K=iK;
                end
            end
        end
    end
% end

figure(1)
plot(t, pomiary, t, y');
Tau, T1, K,
printsys(K*l,m)
bladn=y'-pomiary;
calkan=sum(bladn.^2)
axis([0 300 0 1.3])
% hold on
figure(2)
lsim([1], [1 0], blad2, t);