
%% passa-altas de 4000Hz a 20000Hz
Fs = 40000;
wp= 4000/(Fs/2);
ws= 3400/(Fs/2);
[n, wn]=buttord(wp, ws, 1, 20);
[b, a]= butter(n,wn,'high');
num_freq = 512;
freqz(b, a, num_freq, Fs);