A = 1.5; %amplitudinea
T = 4;
F = 1 / T; %frecventa
t = 0:0.002:4; %timpul de la 0 la 4s cu rezolutie temporara de 2ms
s = abs(A*sin(2*pi*F*t)); % sintaxa sin deseneaza un grafic sinusoidal cu amplitudinea A, perioada t si frecventa F
figure(1)
plot(t,s,'.-'),xlabel('T [s]'),ylabel('A'),grid %afisam semnalul


A = 1.5; 
T = 4;
F = 1 / T;
t = 0:0.02:4; %rezolutie temporara de 20ms
s = abs(A*sin(2*pi*F*t)); 
figure(2)
plot(t,s,'.-'),xlabel('T [s]'),ylabel('A'),grid


A = 1.5; 
T = 4;
F = 1 / T;
t = 0:0.2:4; %rezolutie temporara de 200ms
s = abs(A*sin(2*pi*F*t)); 
figure(3)
plot(t,s,'.-'),xlabel('T [s]'),ylabel('A'),grid