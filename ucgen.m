% alt ve ust : üçgen bulanýk alt kümesinin içinde bulunduðu evrensel
% kumenin sýnýrlarý
% a,c,b : üçgenin baþlangýc tepe ve bitiþ noktalarý
% xi: X evrensel kümesindeki bir eleman
% mu_X: x evrensel kümesindeki elemanlarýn üçgene üyelik dereceleri
% mu_xi: xi nin üçgene üyelik derecesi

function ucgen(alt,a,c,b,ust,xi);

global X  mu_X  mu_xi ;    %bu deðiþkenler baþka programlarda da ayný

% a,c,b noktalarýna göre grafik çizme
alfa = 1 ;
X1 = alt:0.001:a-0.001;
X2 = a:0.001:c-0.001;
X3 = c:0.001:b-0.001; 
X4 = b:0.001:ust;

mu_X1= zeros(size(X1));
mu_X2= alfa*(X2-a)/(c-a);
mu_X3= alfa*(X3-b)/(c-b);
mu_X4= zeros(size(X4));

X=[X1 X2 X3 X4];
mu_X=[mu_X1 mu_X2 mu_X3 mu_X4];
plot (X, mu_X)

%xi elemanýnýn uyelþk derecesini bulur
        if xi>=a & xi<=c
           mu_xi= alfa*(xi-a)/(c-a)
        else if xi>=c & xi<=b
           mu_xi= alfa*(xi-b)/(c-b)
        else mu_xi=0
        end
end
    
    