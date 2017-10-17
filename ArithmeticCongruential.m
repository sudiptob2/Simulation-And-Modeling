r = zeros();
R = zeros();
a = input('Lower limit of the range a: ');
b = input('Upper limit of the range b: ');
m = input('Give m: ');
r(1) = input('Give r0: ');
r(2) = input('Give r1: ');
n = input('Give number of sample n: ');
for i=3:n
    r(i) = mod(r(i-1)+r(i-2),m);
end;
for i=1:n
    R(i) = a + (b-a)*(r(i)/m);
end;
plot(R,'r.');