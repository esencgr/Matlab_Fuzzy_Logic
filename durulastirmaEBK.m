global mu_birlestirme x
BirlestirmeMax 
k = find(mu_birlestirme== max(mu_birlestirme))

% mu_birlestirme uyelik dercelerinin içinden en buyuk uyelik decelerinin
% indislerini  bulur bir vektör olarak saklar 

Z_buyukler= x(k) 
% bunlarýn z eksenindeki hangi deðerler olduðunu bulur 

a=min (Z_buyukler)
z=(a)

line (z,0:0.01:1)