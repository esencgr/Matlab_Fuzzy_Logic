% alt ve ust : üçgen bulanýk alt kümesinin içinde bulunduðu evrensel
% kumenin sýnýrlarý
% a,c,b : üçgenin baþlangýc tepe ve bitiþ noktalarý
% xi: X evrensel kümesindeki bir eleman
% mu_X: x evrensel kümesindeki elemanlarýn üçgene üyelik dereceleri
% mu_xi: xi nin üçgene üyelik derecesi

function ucgenFISGiris(alt,a,c,b,ust,giris);

global mu_giris  CIKIS  mu_CIKIS ;    %bu deðiþkenler baþka programlarda da ayný

% a,c,b noktalarýna göre grafik çizme
alfa = 1 ;

%xi elemanýnýn uyelþk derecesini bulur
        if giris>=a & giris<=c
           mu_giris= alfa*(giris-a)/(c-a)
        else if giris>=c & giris<=b
           mu_giris= alfa*(giris-b)/(c-b)
        else mu_giris=0
        end
end
    
