close all;
clc;
%% convers�o de uma equa��o no dom�nio "s" para o "z" usando o m�todo de invari�ncia ao impulso
%% PARTE 1: especifica��es projeto
wp = 0.2*pi; % 0 a 0.2pi = banda passagem
ws = 0.3*pi; % 0.3pi a 1pi = banda rejei��o
rp = 7; %ripple banda passagem em dB
as = 16; %atenua��o m�nima na banda rejei��o em dB
T = 1; % taxa de amostragem da frequencia
%% PARTE 2: desenha filtro anal�gico
[b, a] = afd_butt(wp, ws, rp, as);
w = 0:pi/1000:pi; %determina um eixo para freq
h = freqs(b,a,w); %calcula a resposta em freq do filtro
subplot(2,1,1); plot(w/pi,abs(h)); title('resp freq analogico');
%% PARTE 3: digitaliza filtro usando inv ao impulso
[bz, az] = impinvar(b,a,T);
hz = freqz(bz,az,w);
subplot(2,1,2); plot(w/pi,abs(hz)); title('resp freq digital');