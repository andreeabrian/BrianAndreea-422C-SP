function ex4()
  %a
  z=zeros([1,21]); %se afiseaza vectorul z format din 21 de nr  
  z(6)=1;
  n=0:20; 
  m=-5:15;
  figure(1);
  subplot(2,1,1); %impartim fereastra grafica intr o matrice de 2*1 miniferestre, iar 1 este nr fiecarei miniferestre
  stem(n,z); %reprezentam datele in forma discreta ale lui z fata de n
  subplot(212);
  stem(m,z); %reprezentam datele in forma discreta ale lui z fata de m
  t=abs(10-n);
  
  %b
  figure(2);
  plot(n,t); %reprezentam datele in forma discreta ale lui t fata de n
  
  %c
  figure(3);
  n2=-15:25;
  x1=sin(n2*pi/17);
  stem(n2,x1);
  hold on; %se afiseaza mai multe grafice in aceeasi figura
  figure(4);
  subplot(211);
  stem(n2,x1);
  subplot(212);
  
  n3=0:50;
  x2=cos(n3*pi/sqrt(23));
  stem(n3,x2);
  figure(3);
  stem(n3,x2);
  
  
end