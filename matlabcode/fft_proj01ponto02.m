clear; clc;
%% gera um sinal "sintetico" com 3 componente de frequencia
Fs = 1000; % taxa de aquisicao
ts = 1/Fs;
N = 1000; % numero de amostras analisadas
t = (0:N-1)*ts;
sinal = 0.6*sin(2*pi*50*t) + 2*sin(2*pi*120*t) + 0.3*sin(2*pi*400*t);
ruido = 0.4*randn(size(t));
%% calcular DFT usando a funcao fft
y = fft(sinal);
y = y/N; % se desejar pode-se dividir por N para "acomodoar" os calculos
%%calcular eixo frequencias f:
m = 0:(N-1);
f = m*Fs/N;
y = y(1:N/2); % pegando so a primeira metade já que a outra é cópia
f = f(1:N/2); % pegando so a primeira metade já que a outra é cópia
%% calcular a potencia do espectro 
magnitude = abs(y);
fase = angle(y);
f_ref = max(magnitude); %escolhe o maior valor para ser a refetrencia para normalização
y_db = 20*log10(magnitude/f_ref); % lembre que, por exemplo 0db = 1 unidade
%% plotar
figure();
subplot(3,1,1); plot(f, magnitude);  title('magnitude espectro'); xlabel('freq(Hz)'); ylabel('Amplitude');
subplot(3,1,2); plot(f, y_db); title('potencia espectro');
subplot(3,1,3); plot(f, fase); title('real');
