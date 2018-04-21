% Ponto 2 Amostrando Sinais
% simular o processo de conversao de tempo continuo para tempo discreto


%% inicialiacoes
F = 60; % freq analogica
Fs = 400; 
ts = 1/Fs;
for i = [1:4]
    num_ciclos = i;
    t = 0:1e-6:(num_ciclos*(1/F));
    n = 0:round(num_ciclos*(Fs/F));

    figure;
    %% parte analogica
    f_analogico = sin(2*pi*F*t);
    plot(t,f_analogico);

    %parte digital
    % figure;
    f_digital = sin(2*pi*(F/Fs)*n);
    hold on;
    stem(n*ts,f_digital);
end