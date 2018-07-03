
%% Codigo projeto de filtro Butterworth
N = 3;
OmegaC = 2500/5000; %freq de corte 2.500Hz com taxa de aquisição de 2x5.000Hz (normalizado)
[b,a] = butter(N,OmegaC,'low','s')