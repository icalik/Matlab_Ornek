clc;clear;
n = input('Kac adet ogreci girilecek?');
dosya = fopen('ogrenci_notlar.dat','w');
fprintf(dosya,'Numara   Isim_Soyisim   Vize1   Vize2   final   ortalama   harf\n');
for i=1:n
    fprintf('Ogrencinin numarasini giriniz : ');
    nu = input(' ');
    fprintf('Ogrencinin adini giriniz :');
    ad = input(' ','s');
    fprintf('Ogrencinin 1.vize notunu girniz :');
    v1 = input(' ');
    fprintf('Ogrencinin 2.vize notunu giriniz :');
    v2 = input(' ');
    fprintf('Ogrencinin final notunu giriniz :');
    fi = input(' ');
    ort = (v1 + v2)*0.2 + fi*0.6;
    not = ' ';
    if ort > 85 && ort < 100
        not = 'A';
    elseif ort > 70 && ort < 85
         not = 'B';
    elseif ort > 60 && ort < 70 
         not = 'C';
    elseif ort > 50 && ort < 60
            not = 'D';
    elseif ort > 0 && ort < 50
            not = 'F';
    end
    fprintf(dosya,'%d   %s   %d   %d   %d   %4.1d   %s\n',nu,ad,v1,v2,fi,ort,not);
end
fclose(dosya);
