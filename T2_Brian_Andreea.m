N = 50;
n = N/2; 
P=40;
omega0=2*pi/P;
D=3;
duty=(D/P)*100;
t=0:0.002:200; %pas de 2ms, 5 perioade
x = zeros(1,51);
s =(square(omega0*t,duty)+abs(1*square(omega0*t,duty)))/2; % semnalul dreptunghiular
for k=-n:n
 x(k+n+1) = 1/P * integral(@(t)((1*square(omega0*t,duty)+abs(1*square(omega0*t,duty)))/2.*exp(-j*k*omega0*t)),0,P);
end
figure(1);
subplot(3,1,1);
plot(t,s)
axis ([0 200 -0.5 1.5])
title('Semnalul drepunghiular'); 
subplot(3,1,2);
stem((-n:n)*omega0,abs(x))
title('Spectru amplitudini'); 
semnalreconstruit=0; 
for k=-n:n
    semnalreconstruit=semnalreconstruit+x(k+n+1)*exp(1j*k*w0*t);
end
subplot(3,1,3)
hold on 
plot(t,s)
axis ([0 200 -0.5 1.5])
title('Semnalul reconstruit');
plot(t,real(semnalreconstruit),'--r')
plot(t,imag(semnalreconstruit),'--r')
hold off