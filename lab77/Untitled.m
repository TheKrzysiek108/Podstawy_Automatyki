clear all; close all;
% I rzad
tp=0.1; k=100.0035;
tp=1; k=10.0335;
tp=5; k=2.2;
tp=10; k=2;

% III rzad
% bez ekstrapolatora
k=8;
% z ekstrapolatorem nie jest stabilny dla k=8
tp=0.01; k=8;
tp=0.1; k=7.77;
tp=1; k=6.25;
tp=5; k=3;

%%
clear all; close all;
tp=10; k=8
sim('model')
figure
stairs(s1(:,1), s1(:,2))
figure
plot(w1(:,1), w1(:,2),w1(:,1), w1(:,3),w1(:,1), w1(:,4))


