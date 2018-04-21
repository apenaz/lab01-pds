% Ponto 4 Operacao com Sinais
% soma, multiplicacao, descolamento e convolucao

% soma
x1 = [ 1  2  3  2  1];
n1 = [-2 -1  0  1  2];
x2 = [2 3 4];
n2 = [0 1 2]; 

[x3, n3] = sigadd(x1,n1,x2,n2);
stem(n3,x3);