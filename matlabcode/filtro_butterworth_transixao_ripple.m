
close all;
clc;
%% Codigo projeto de filtro Butterworth passa-baixas anal�gico a partir da banda de transi��o, ripple e atenua��o
wp = 0.2*pi; % 0 a 0.2pi = banda passagem
ws = 0.3*pi; % 0.3pi a 1pi = banda rejei��o
rp = 7; %ripple banda passagem em dB
as = 16; %atenua��o m�nima na banda rejei��o em dB
ripple = 10^(-rp/20); %descobre valor do ripple sem escala log
atenuacao = 10^(-as/20); %descobre valor da atenua��o sem escala log
[b, a] = afd_butt(wp, ws, rp, as)
w = 0:pi/1000:pi; %determina um eixo para freq
h = freqs(b,a,w); %calcula a resposta em freq do filtro
plot(w/pi,abs(h));