x=0:1:35;
mu_grkSC=[0.4 0.4 0.4 0.4 0.4 0.4 0.4 0.3 0.2 0.1 zeros(1,26)];
mu_grkAZ=[0 0.2 0.4 0.6 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7 0.7  0.6 0.4 0.2 zeros(1,17)];
mu_grkORTA=[zeros(1,11) 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.9 0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1 zeros(1,6)];
mu_grkCOK=[zeros(1,21) 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1];
 
mu_birlestirme = max(max (mu_grkSC , mu_grkAZ),max (mu_grkORTA , mu_grkCOK ));

plot (x, mu_birlestirme)

axis([0 35 0 1])