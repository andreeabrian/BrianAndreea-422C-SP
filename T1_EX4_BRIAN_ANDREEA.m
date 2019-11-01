t = 0:0.002:6; %rezolutie de 2 ms
F=1/3;
g = @(t) 0.8*sin(2*pi*F.*t).*(sin(2*pi*F.*t)>=0) + 0*(sin(2*pi*F.*t)<0);  
%@(t) functie care arata cazurile in care daca sinusul este <0,devine 0, iar daca este
%>0 nu se schimba
figure(1)
plot(t, g(t)),xlabel('t (s)'), ylabel('amplitudine')
grid

t1 = 0:0.02:6; %rezolutie de 20 ms
F=1/3;
g = @(t1) 0.8*sin(2*pi*F.*t1).*(sin(2*pi*F.*t1)>=0) + 0*(sin(2*pi*F.*t1)<0);  
figure(2)
plot(t1, g(t1)),xlabel('t (s)'), ylabel('amplitudine')
grid

t2 = 0:0.2:6; %rezolutie de 200ms
F=1/3;
g = @(t2) 0.8*sin(2*pi*F.*t2).*(sin(2*pi*F.*t2)>=0) + 0*(sin(2*pi*F.*t2)<0);  

figure(3)
plot(t2, g(t2)),xlabel('t (s)'), ylabel('amplitudine')
grid