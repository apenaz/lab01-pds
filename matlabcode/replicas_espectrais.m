% Ponto 3 Replicas Espectrais
%mostrar replica espectral

%% inicialiacoes
F1 = 1000; % freq analogica
Fs = 6000; % freq aquisicao
ts = 1/Fs; % tempo aquisicao
for i = [1:4]
    num_ciclos = i; % (1 equivale a 3 ciclos)
    t = 0:1e-6:(num_ciclos*(1/F1));  % tempo simulacao
    n = 0:round(num_ciclos*(Fs/F1)); % numero de amostras

    figure;
    %% parte analogica
    f_analogico1 = sin(2*pi*F1*t);
    f_analogico2 = sin(2*pi*7000*t);
    f_analogico3 = sin(2*pi*13000*t);
    plot(t,f_analogico1,'r');
    hold on;
    plot(t,f_analogico2,'b');
    plot(t,f_analogico3,'k');
    legend('1k', '7k', '13k');
    
    %parte digital
    % figure;
    f_digital = sin(2*pi*(F1/Fs)*n);
    stem(n.*ts,f_digital);
end