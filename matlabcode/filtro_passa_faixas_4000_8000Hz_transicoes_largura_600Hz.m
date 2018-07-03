
%%  filtro passa-faixas de 4000 a 8000Hz com transições de largura 600Hz
Fs = 40000;
ws1= 3400/(Fs/2);
wp1= 4000/(Fs/2);
wp2= 8000/(Fs/2);
ws2= 8600/(Fs/2);
[n, wn]=buttord([wp1 wp2], [ws1 ws2], 1, 20);
[b, a]= butter(n,wn);
num_freq = 512;
freqz(b, a, num_freq, Fs);