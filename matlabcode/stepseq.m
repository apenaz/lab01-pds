% Degrau unitário u(n): esta função é gerada usando o código
% stepseq(n0, inicio, fim)

function [x, n] = stepseq(n0, inicio, fim)
% Gera x(n) = u(n - n0); inicio <= n,n0 <= fim
% -------------------------------------------------
% [x,n]  =  stepseq(n0, inicio, fim)
if ((n0 < inicio) | (n0 > fim) | (inicio > fim))
    error('Os argumentos devem satisfazer a condição inicio <= n0 <= fim')
end
n = [inicio:fim];
x = [(n - n0) >= 0]; % percorre o vetor n e insere 1(verdadeiro) apenas se n - n0 for maior ou igual a 0