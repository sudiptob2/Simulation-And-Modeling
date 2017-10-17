r1 = zeros();
R1 = zeros();
r2 = zeros();
R2 = zeros();
r3 = zeros();
R3 = zeros();
l = input('Lower limit of the range a: ');
u = input('Upper limit of the range b: ');
seed = input('Enter seed: ');
a = input('Give a (residue): ');
b = input('Give b(residue): ');
r = input('Give r0(residue): ');
m1 = input('Give m(residue): ');

r3(1) = input('Give r0(Arithmetic con): ');
r3(2) = input('Give r1(Arithmetic con.): ');
m2 = input('Give m(Arithmatic con.): ');
n = input('Give number of sample n: ');
figure('color','white');
hold all
%mid square
for i=1:n
    y = floor((seed^2)/100);
    z = floor(y/10000);
    x = (y/10000.00 - z)*10000;
    seed = x;
    r1(i)=x;
    R1(i) = l+ (u-l)*(r1(i)/10000);
    
end
%residue
x = r;
for i=1:n
    x = mod(a*x+b,m1);
    r2(i) = x;
    R2(i) =  l+ (u-l)*(r2(i)/m1);
end
%Arithmatic congruential
for i=3:n
    r3(i) = mod(r3(i-1)+r3(i-2),m2);
end;
for i=1:n
    R3(i) = l+ (u-l)*(r3(i)/m2);
end;

plot(R1,'r.');
plot(R2,'+g');
plot(R3,'b.');







