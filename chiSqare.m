a =0;
b=100;
n = input('Give number of sample ');
R = zeros(n,1);
for i=1:n
    R(i) = randi(100);
end
f = zeros(10,1);
for i=1:n
    if R(i)>0 && R(i)<=10
        f(1)= f(1)+1;
     elseif R(i)>10 && R(i)<=20
        f(2)= f(2)+1;
     elseif R(i)>20 && R(i)<=30
        f(3)= f(3)+1;
     elseif R(i)>30 && R(i)<=40
        f(4)= f(4)+1;
    elseif R(i)>40 && R(i)<=50
        f(5)= f(5)+1;
    elseif R(i)>50 && R(i)<=60
        f(6)= f(6)+1;
    elseif R(i)>50 && R(i)<=70
        f(7)= f(7)+1;
    elseif R(i)>70 && R(i)<=80
        f(8)= f(8)+1;
    elseif R(i)>80 && R(i)<=90
        f(9)= f(9)+1;
    elseif R(i)>90 && R(i)<=100
        f(10)= f(10)+1;
    end
end
Diff = 10-f;
Diff = Diff.^2;
s = sum(Diff);
chi = s/10;
fprintf('Chi-square :%.3f\n',chi);





   
