clear; clc;
%% gera um sinal "sintetico"
Fs = 200; 
ts = 1/Fs;
N = 300; 
t = (0:N-1)*ts;
sinal = 0.6*sin(2*pi*13*t);
%% cria um segundo sinal janelado
janela = window(@hann, N);
sinal_jan = sinal'.*janela;
%% calcular DFT usando a funcao fft
y = fft(sinal);
y_jan = fft(sinal_jan);
%% calcular eixo frequencias
m = 0:(N-1);
f = m*Fs/N;
y = y(1:N/2); 
y_jan = y_jan(1:N/2);
f = f(1:N/2);
%% calcular a potencia do espectro
magnitude = abs(y);
magnitude_jan = abs(y_jan);
f_ref = max(magnitude);
f_ref_jan = max(magnitude_jan);
y_db = 20*log10(magnitude/f_ref);
y_db_jan = 20*log10(magnitude_jan/f_ref_jan);
%% plotar
figure();
subplot(3,2,1); plot(t, sinal);  title('sinal não janelado');
subplot(3,2,3); stem(f, magnitude); title('magnitude espec sem jan'); ylim([0 max(magnitude)]);
subplot(3,2,5); plot(f, y_db); title('potencia espectro sem janela');
subplot(3,2,2); plot(t, sinal_jan);  title('sinal janelado');
subplot(3,2,4); stem(f, magnitude_jan); title('magnitude espec com jan');  ylim([0 max(magnitude)]);
subplot(3,2,6); plot(f, y_db_jan); title('potencia espectro com janela');