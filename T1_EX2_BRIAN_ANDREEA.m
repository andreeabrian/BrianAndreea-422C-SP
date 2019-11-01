F = 0.2; %perioada masurata in s^-1/Hz
A = 1.5; %amplitudinea  
offset= -0.5; %arata cu cat se deplaseaza semnalul pe verticala  

t1 = 0:0.002:10; %timpul1 
x = offset + A*sawtooth(2*pi*F.*t1,1);%generarea semnalului
figure(1) %rezolutie de 2ms
plot(t1, x),xlabel('t (s)'),ylabel('tr') ,grid

t2 = 0:0.02:10; %timpul2
x = offset + A*sawtooth(2*pi*F.*t2,1);%generarea semnalului
figure(2)%rezoutie de 20ms
plot(t2, x),xlabel('t (s)'),ylabel('tr') ,grid

t3 = 0:0.2:10; %timpul3 
x = offset + A*sawtooth(2*pi*F.*t3,1);%generarea semnalului
figure(3)%rezolutie de 2 ms
plot(t3, x),xlabel('t (s)'),ylabel('tr') ,grid