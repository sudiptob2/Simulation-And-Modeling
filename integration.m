f = @(x) x^3;
n = input('Give number of sample: ');
a = input('Give Lower Limit: ');
b = input('Give upper Limit: ');
h = input('Give Height h: ');
figure('color','white');
hold all
A = (b-a)*h;
axis square;
x = a + (b-a).*rand(n,1);
y = h*rand(n,1);
z = (x.^4)/3;
m=0;
plot(x,z,'g.');
for i=1:n
    if y(i)<=z(i)
        m = m+1;
        plot(x(i),y(i),'+b');
    else
        plot(x(i),y(i),'r.');
    end
end
xlabel('X');
I = A*(m/n);
fprintf('I = %.3f\n',I);
