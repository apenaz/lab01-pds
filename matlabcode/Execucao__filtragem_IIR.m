
%%  Execução de um filtragem IIR
Fs = 40000;
wp1= 4000/(Fs/2);
ws1= 3400/(Fs/2);
wp2= 6000/(Fs/2);
ws2= 6600/(Fs/2);
[n, wn]=buttord([wp1 wp2], [ws1 ws2], 1, 20);
[b, a]= butter(n,wn);
%% cria sinal sintético
t = 0:(1/Fs):0.02;
N = max(t)/(1/Fs);
n = 0:N;
entrada_discretizada = sin(2*pi*900.*n/Fs) + sin(2*pi*14500.*n/Fs) + sin(2*pi*5000.*n/Fs) + sin(2*pi*9000.*n/Fs);
%% aplica filtro
sinal_filtrado = filter(b, a, entrada_discretizada);
%% calcula espectros e plota sinais
fft_sinal_entrada = abs(fft(entrada_discretizada)/N);
fft_sinal_filtrado = abs(fft(sinal_filtrado)/N);
f_resol = Fs/N;
f = n.*f_resol;

subplot(1,2,1);title('Sinal no tempo'); plot( entrada_discretizada); hold on; plot(sinal_filtrado,'r');
subplot(1,2,2); plot(f(1:N/2), fft_sinal_entrada(1:N/2)); hold on;
title('Espectro');
plot(f(1:N/2),fft_sinal_filtrado(1:N/2),'r');