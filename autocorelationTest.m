a =0;
b=100;
n = 100; %number of random numbers
R = zeros(n,1);
for i=1:100
    R(i) = randi(100);
end
f = zeros(10,1);
for i=1:99
    if R(i)<=33 && R(i+1)<=33
        f(1)=f(1)+1;
    elseif R(i)<=67 && R(i+1)<=33
        f(2)=f(2)+1;
    elseif R(i)<=100 && R(i+1)<=33
        f(3)=f(3)+1;
    elseif R(i)<=33 && R(i+1)<=67
        f(4)=f(4)+1;
    elseif R(i)<=67 && R(i+1)<=67
        f(5)=f(5)+1;
    elseif R(i)<=100 && R(i+1)<=67
        f(6)=f(6)+1;
    elseif R(i)<=33 && R(i+1)<=100
        f(7)=f(7)+1;
    elseif R(i)<=67 && R(i+1)<=100
        f(8)=f(8)+1;
    elseif R(i)<=100 && R(i+1)<=100
        f(9)=f(9)+1;
    end        
end
expectation = floor((n-1)/9);
Diff = expectation-f;
Diff = Diff.^2;
s = sum(Diff);
chi = s/expectation;
fprintf('Chi-square for auto corellation :%.3f\n',chi);





   
