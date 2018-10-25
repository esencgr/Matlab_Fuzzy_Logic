global mu_birlestirme  x 

BirlestirmeMax

toplam_alan = sum (mu_birlestirme)

if toplam_alan==0 
    
    'Aðýrlýk merkezi yönteminde alan sýfýr'
end 

z=sum(mu_birlestirme.*x)/ toplam_alan
line (z, 0:0.01:1) 