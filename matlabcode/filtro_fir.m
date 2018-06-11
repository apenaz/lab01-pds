clc; clear;
h = [0.4375, 0.3142, 0.0625, -0.0935, -0.0625, 0.0418, 0.0625, -0.0124, -0.0625, -0.0124, 0.0625, 0.0418, -0.0625, -0.0935, 0.0625, 0.3142];
n_h = 0:15;
%% PARTE 1: Gera um sinal analógico (entrada_analogica) e sua versão discretizada (entrada_discretizada)
Fs = 20000; % taxa de amostragem: 20mil amostras/seg
t = 0:(1/Fs):0.02; % amostragem de 0,02seg
N = max(t)/(1/Fs);
n = 0:N; % quantidade de amostras da entrada para filtrar
%entrada_analogica = sin(2*pi* 200*t) + sin(2*pi*25*t) + sin(2*pi* 5000*t) + sin(2*pi*9000*t);
entrada_discretizada = sin(2*pi*200.*n/Fs) + sin(2*pi*25.*n/Fs) + sin(2*pi*5000.*n/Fs) + sin(2*pi*9000.*n/Fs);
%% PARTE 2: convolui entrada com h
saida = conv(entrada_discretizada, h);
%% PARTE 3: PLOTA RESULTADOS
% calcula espectro entrada
fft_sinal_entrada = fft(entrada_discretizada)/N;
f_entrada = n.*(Fs/N);
% calcula espectro saida
N3 = size(saida,2);
fft_sinal_saida = fft(saida)/N3;
n3 = 0:size(fft_sinal_saida,2)-1;
f_saida = n3.*(Fs/N3);
% calcula espectro filtro
fft_resp_filtro = fft(h);
n4 = 0:size(fft_resp_filtro,2)-1;
N4 = size(n4,2);
f_h = n4.*(Fs/N4);
%plota espectros
subplot(3,1,1); stem(n_h,h); xlabel('n'); title('Coef. filtro');
subplot(3,1,2); plot(f_entrada(1:N/2), abs(fft_sinal_entrada(1:N/2)),'b');
hold on;
plot(f_saida(1:N3/2), abs(fft_sinal_saida(1:N3/2)),'r');
plot(f_h(1:N4/2), abs(fft_resp_filtro(1:N4/2)),'g');
legend('entrada','saída','resp. impulsiva');
xlabel('Freq (Hz)');
title('Espectros dos sinais e filtro')
%plota sinais
subplot(3,1,3); plot(n, entrada_discretizada,'b');
hold on;
plot(n3, saida,'r');
legend('entrada','saída');
xlabel('n');
title('Sinais discretos do filtro');