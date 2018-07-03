
close all;
clc;
%% Codigo projeto de filtro Butterworth passa-baixas analógico a partir da banda de transição, ripple e atenuação
wp = 0.2*pi; % 0 a 0.2pi = banda passagem
ws = 0.3*pi; % 0.3pi a 1pi = banda rejeição
rp = 7; %ripple banda passagem em dB
as = 16; %atenuação mínima na banda rejeição em dB
ripple = 10^(-rp/20); %descobre valor do ripple sem escala log
atenuacao = 10^(-as/20); %descobre valor da atenuação sem escala log
[b, a] = afd_butt(wp, ws, rp, as)
w = 0:pi/1000:pi; %determina um eixo para freq
h = freqs(b,a,w); %calcula a resposta em freq do filtro
plot(w/pi,abs(h));