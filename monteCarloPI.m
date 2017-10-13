n=input('Number of sample: ');
x=rand(n,1);
y=rand(n,1);
figure('color','white');
hold all
axis square;
m=0;
plot(x,sqrt(1-x.^2),'g.');
for i=1:n
    if x(i)^2+y(i)^2<=1
        m=m+1;
        plot(x(i),y(i),'b.');
    else

        plot(x(i),y(i),'r.');
    end
end
P = 4*m/n;
fprintf('%.3f',P);
