a=0:0.1:2  %generam vectorul
c=a(:); %pun vectorul a sub forma de vector coloana 
b=ones(size(c)) %formam o matrice de marimea c cu valorile 1
%a)
rez1=a*b %realizam inmultirea
%b)
rez2=b*a %realizam inmultirea
%c)
for i=1:size(a)
    rez3(i)=a(i)*b(i);  %realizam inmultirea
end
rez3 % se obtine vectorul a