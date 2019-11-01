x=randn(1,10) %se genereaza vectorul x
for i=1:10  %se parcurge vectorul x
    if(x(i)<0)  %punem conditia ca valoarea vectorului x sa fie negativa
        x(i)    %afisam valoarea acestuia
    end
end