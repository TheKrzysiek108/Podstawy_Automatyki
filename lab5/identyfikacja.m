close all; clear all;
load pomiary

czas  =  linspace  (  0  ,  300  ,  length(pomiary)); 
plot(czas, pomiary)
