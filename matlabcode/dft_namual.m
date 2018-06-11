% DFT manual

clear; clc;
sinal = [1 1 1 1 1]; %sinal
Fs = 1000; % taxa de aquisicao
N = size(sinal,2); % num de amostras
y = zeros(1,N);
%% calcular DFT
for m=0:(N-1)
    acumulador = 0;
    for n=0:(N-1)
        acumulador = acumulador + sinal(n+1)*cos(2*pi*n*m/N)-j*sin(2*pi*n*m/N);
        %acumulador = acumulador + sinal(n+1)*exp(-j*2*pi*n*m/N);
    end
    y(m+1)=acumulador;
end
%%calcular eixo frequencias f:
m = 0:(N-1);
f = m*Fs/N;
%% plotar sinais
magX = abs(y);
angX = angle(y);
realX = real(y);
imagX = imag(y);
figure();
subplot(2,2,1); stem(f, magX);  title('magnitude');
subplot(2,2,3); stem(f, angX);  title('fase');
subplot(2,2,2); stem(f, realX); title('real');
subplot(2,2,4); stem(f, imagX); title('imaginario');
