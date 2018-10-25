global mu_birlestirme  x 

BirlestirmeMax

toplam_alan = sum (mu_birlestirme)

if toplam_alan==0 
    
    'Aðýrlýk merkezi yönteminde alan sýfýr'
end 
  yari_alan=0;
  for k=1:size(x,2)
      yari_alan = yari_alan+mu_birlestirme(k)
      if yari_alan>=toplam_alan/2
          break    
      end
  end 
      
     
z=x(k)
line (z, 0:0.01:1) 