clc;clear;
n = input('Kac adet terim girilecek?');
carpim = 1;

for i=1:n
    fprintf('%d . terimi giriniz\n',i);
    k = input(' ');
    carpim = carpim * k;
end
geo = carpim^(1/n);
fprintf('Girilen sayilarin geometrik ortalamasi : %d\n',geo);
