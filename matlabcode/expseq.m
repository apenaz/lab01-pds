% Sequ�ncia exponencial exp(n): esta fun��o � gerada usando o c�digo
% expseq(base, inicio, fim)
% function [xb] = expseq(base, n)
% Gera exp(n) = exp(base^n)
% x = 

n = [-4:4];
a = exp((0.2+3j)*n);
for(Iterador = 0; 
pReal = real(a)
pImg = imag(a)
figure;
subplot(2,2,1); stem(n, real(a));  title('Parte real');
subplot(2,2,2); stem(n, imag(a));  title('Parte imagin�ria');
subplot(2,2,3); stem(n, abs(a));   title('Magnitude');
subplot(2,2,4); stem(n, angle(a)); title('Fase');
b=exp(0.2*n);
c=exp(3j*n);
% figure;
% subplot(2,1,1); stem(n,b); title('M�dulo');
% subplot(2,1,2); stem(n,c); title('Fase');
