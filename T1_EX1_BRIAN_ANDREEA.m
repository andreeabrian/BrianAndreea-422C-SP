F = 0.5; %frecventa masurata in s^-1/Hz
offset = -0.25; %offsetul, cu cat se deplaseaza semnalul in sus sau in jos cu o valoare data
A = 0.75; %amplitudinea
duty = 25; %factorul de umplere de 25%
t1 = 0:0.002:4; %timpul1
x = offset+A*square(2*pi*F.*t1,duty); %formam semnalul dreptunghiular
figure(1) %rezolutie 2ms
plot(t1,x), xlabel('t (s)'), ylabel('A'),grid

t2 = 0:0.02:4; %timpul2
x = offset+A*square(2*pi*F.*t2,duty);
figure(2) %rezolutie 20ms
plot(t2,x), xlabel('t (s)'), ylabel('A'),grid

t3 = 0:0.2:4; %timpul3
x = offset+A*square(2*pi*F.*t3,duty);
figure(3) %rezolutie 200ms
plot(t3,x), xlabel('t (s)'), ylabel('A'),grid