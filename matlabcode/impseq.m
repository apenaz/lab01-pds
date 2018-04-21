% Amostra unit�ria delta(n): fun��o � gerada usando o c�digo
% impseq(n0, inicio, fim).

function [x, n] = impseq(n0, inicio, fim)
% Gera x(n) = delta(n - n0); inicio <= n,n0 <= fim
% ------------------------------------------------
% [x,n] = impseq(n0, inicio, fim)
if ((n0 < inicio) || (n0 > fim) || (inicio > fim))
    error('Os argumentos devem satisfazer a condi��o inicio <= n0 <= fim')
end
n = [inicio : fim];
x = [(n - n0) == 0]; % percorre todo o vetor n e coloca 0(falso) se (n - n0) diferente de 0 e 1(verdadeiro) caso contr�rio.
end
