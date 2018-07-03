
%% filtro passa-baixas de 0 a 3.400Hz com transição de 3400 a 4000Hz.
Fs = 40000;
wp= 3400/(Fs/2);
ws= 4000/(Fs/2);
[n, wn]=buttord(wp, ws, 1, 20);
[b, a]= butter(n,wn);
num_freq = 512;
freqz(b, a, num_freq, Fs);