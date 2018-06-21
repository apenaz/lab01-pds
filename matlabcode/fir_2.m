close all;
clear;
clc;

ordem = 50;
resol_plot_freq = 512;
%Exemplo 1: passa-baixas
f = [0, 0.3, 0.4, 1]; m = [1, 1, 0, 0];
coef = fir2(ordem, f, m);
freqz(coef,1,resol_plot_freq);
%Exemplo 2: passa-altas
f = [0, 0.5, 0.65, 1]; m = [0, 0, 1, 1];
coef = fir2(ordem, f, m);
freqz(coef,1,resol_plot_freq);
%Exemplo 3: passa-altas com janela
f = [0, 0.5, 0.65, 1]; m = [0, 0, 1, 1];
coef = fir2(ordem, f, m, hann(ordem+1));
freqz(coef,1,resol_plot_freq);
%Exemplo 4: passa-banda
f = [0, 0.4, 0.5, 0.7, 0.8, 1]; m = [0, 0, 1, 1, 0, 0];
coef = fir2(ordem, f, m);
freqz(coef,1,resol_plot_freq);
%Exemplo 5: rejeita-banda
f = [0, 0.4, 0.5, 0.7, 0.8, 1]; m = [1, 1, 0, 0, 1, 1];
coef = fir2(ordem, f, m);
freqz(coef,1,resol_plot_freq);