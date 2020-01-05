N = 50; % numarul de coeficienti
n = N/2;  % deoarece numarul maxim de coeficienti este 50, iar suma va merge de la -25:25
P=40; % periada
omega0=2*pi/P; %pulsatia
D=3; %durata impulsului
duty=(D/P)*100; %factorul de umplere
t=0:0.002:200; %pas de 2ms, 5 perioade
x = zeros(1,51); % initializam vectorul in care se vor gasi coeficientii seriei cu 0
s =(square(omega0*t,duty)+abs(1*square(omega0*t,duty)))/2; % semnalul dreptunghiular
for k=-n:n 
 x(k+n+1) = 1/P * integral(@(t)((1*square(omega0*t,duty)+abs(1*square(omega0*t,duty)))/2.*exp(-j*k*omega0*t)),0,P);
 % in x(k+n+1) vom insera rezultatele seriei pentru fiecare coeficient,
 % atunci cand k=-n, primul coeficient va fi x(1)
end
figure(1);
subplot(3,1,1);
plot(t,s) % afisam semnalul dreptunghiular initial
axis ([0 200 -0.5 1.5]) % am marit domeniul pentru a vizualiza mai bine semnalul
title('Semnalul drepunghiular'); 
subplot(3,1,2);
stem((-n:n)*omega0,abs(x)) % afisam spectrul de amplitudine
title('Spectru amplitudini'); 
semnalreconstruit=0; 
for k=-n:n
    semnalreconstruit=semnalreconstruit+x(k+n+1)*exp(1j*k*w0*t);
end
% semnalul reconstruit se va determina ca fiind suma din fiecare coeficient
% inmultit cu exponentiala
subplot(3,1,3)
hold on 
plot(t,s)
axis ([0 200 -0.5 1.5])
title('Semnalul reconstruit');
plot(t,real(semnalreconstruit),'--r') %afisare partea reala semnal reconstituit
plot(t,imag(semnalreconstruit),'--r') %afisare partea imaginara semnal reconstituit
hold off
%am folosit hold on si hold off pentru a afisa semnalul reconstituit si
%original simultan
