global  mu_giris CIKIS mu_CIKIS ;
alt_x=0  ; ust_x=100;
alt_y=-5 ; ust_y=15;
alt_z=-10; ust_z=35;

%numerik giriþler
x=30; y=3; z=0;

%bulanik kümelerin tanýmlanmasý

%1.SSD Giriþine ait uyelik fonksiyonlarý ve bulaþýklaþtýrma 
ucgenFISGiris(alt_x,0,25,50,ust_x,x); 
 mu_x_I=mu_giris
ucgenFISGiris(alt_x,25,50,75,ust_x,x); 
 mu_x_S=mu_giris

%2.SD Giriþine ait uyelik fonksiyonlarý ve bulaþýklaþtýrma 
ucgenFISGiris(alt_y,-5,0,5,ust_y,y); 
 mu_y_D=mu_giris
ucgenFISGiris(alt_y,0,5,10,ust_y,y); 
 mu_y_A=mu_giris

%3.SSVTS ÇIKIÞINA  ait uyelik fonksiyonlarý ve bulaþýklaþtýrma 
ucgenFISGiris(alt_z,-10,0,10,ust_z);
Z=CIKIS;  mu_SC=mu_CIKIS;
ucgenFISGiris(alt_z,0,10,20,ust_z);
  mu_AZ=mu_CIKIS;
ucgenFISGiris(alt_z,10,20,30,ust_z);
  mu_O=mu_CIKIS;
ucgenFISGiris(alt_z,10,20,30,ust_z);
  mu_O=mu_CIKIS;
ucgenFISGiris(alt_z,20,30,35,ust_z);
  mu_C=mu_CIKIS;

%Kurallarýn giriþ kýsmýndaki öncül önermelerini baðlayan norm baðlacý VE BAÐLACI olarak min operatörü kullanýlmýþtýr

%1.kuraal= SSD=I VE SD=D ÝSE
mu_kural1=min(mu_x_I,mu_y_D)

%2.kuraal= SSD=I VE SD=A ÝSE
mu_kural2=min(mu_x_I,mu_y_A)

%3.kuraal= SSD=S VE SD=D ÝSE
mu_kural3=min(mu_x_S,mu_y_D)

%4.kuraal= SSD=S VE SD=A ÝSE
mu_kural4=min(mu_x_S,mu_y_A)

%GEREKTÝRME operatörü olarak prod(*) kullanýlmþtýr

%1.kuraal ise O halde SSSVTS = SC ait sonuç
mu_sonuc1=mu_kural1*mu_SC;
%2.kuraal=ise O halde SSSVTS = AZ ait sonuç
mu_sonuc2=mu_kural2*mu_AZ;
%3.kuraal=ise O halde SSSVTS = O ait sonuç
mu_sonuc3=mu_kural3*mu_O;
%4.kuraal=ise O halde SSSVTS = C ait sonuç
mu_sonuc4=mu_kural4*mu_C;

plot (z,mu_sonuc1,z,mu_sonuc2,z,mu_sonuc3,z,mu_sonuc4)

%BÝRLEÞTÝRME Operatörü olarak max 
mu_birlestirme=max(max(mu_sonuc1,mu_sonuc2),max(mu_sonuc3,mu_sonuc4));
plot (Z,mu_birlestirme);

%DURULASTÝRMA operatörü olarak aðýrlýk merkezi kullanýlmýþtýr 
toplam_alan = sum (mu_birlestirme)

if toplam_alan==0 
    
    'Aðýrlýk merkezi yönteminde alan sýfýr'
end 

z=sum(mu_birlestirme.*Z)/ toplam_alan
line (z, 0:0.01:1)











