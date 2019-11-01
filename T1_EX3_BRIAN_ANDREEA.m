t1=0:0.002:10; %rezolutie temporala de 2ms
figure(1)
level = [ -1, 1 ]; %vector cu 2 valori: 1 si -1
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t1, x*rectpuls(t1-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(2)
level = [ -3, -1, 1, 3 ]; %vector de valori -3,-1,1,3
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t1, x*rectpuls(t1-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(3)
level = [ -5, -3, -1, 1, 3, 5 ];
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t1, x*rectpuls(t1-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(4)
level = [ -7, -5, -3, -1, 1, 3, 5, 7];
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t1, x*rectpuls(t1-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off


t2=0:0.02:10; %0.02 = 20ms = rezolutia temporala

figure(5)
level = [ -1, 1 ]; %vector cu valori -1,1
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t2, x*rectpuls(t2-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(6)
level = [ -3, -1, 1, 3 ]; %vector valorile: -3 ,-1, 1, 3
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t2, x*rectpuls(t2-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(7)
level = [ -5, -3, -1, 1, 3, 5 ];
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t2, x*rectpuls(t2-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(8)
level = [ -7, -5, -3, -1, 1, 3, 5, 7];
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t2, x*rectpuls(t2-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

t3=0:0.2:10; %0.2 = 200ms = rezolutia temporala

figure(9)
level = [ -1, 1 ]; %vector cu 2 valori: 1 si -1
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t3, x*rectpuls(t3-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(10)
level = [ -3, -1, 1, 3 ]; %vector cu 4 valori: -3 ,-1, 1, 3
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t3, x*rectpuls(t3-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(11)
level = [ -5, -3, -1, 1, 3, 5 ];
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t3, x*rectpuls(t3-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off

figure(12)
level = [ -7, -5, -3, -1, 1, 3, 5, 7];
hold on
for n=0:0.25:10
x = datasample(level, 1);
plot(t3, x*rectpuls(t3-n, 0.25))
end
xlabel('Timp [s]')
ylabel('A [V]')
hold off
