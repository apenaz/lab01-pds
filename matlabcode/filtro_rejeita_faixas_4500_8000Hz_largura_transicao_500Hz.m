
%% filtro rejeita-faixas que exclui as faixas de 4500 a 8000Hz e largura de transição de 500Hz
Fs = 40000;
wp1= 4000/(Fs/2);
ws1= 4500/(Fs/2);
wp2= 8500/(Fs/2);
ws2= 8000/(Fs/2);
[n, wn]=buttord([wp1 wp2], [ws1 ws2], 1, 20);
[b, a]= butter(n,wn,'stop');
num_freq = 512;
freqz(b, a, num_freq, Fs);