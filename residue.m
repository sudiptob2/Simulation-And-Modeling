a = input('Give a: ');
b = input('Give b: ');
r = input('Give r0: ');
m = input('Give m: ');
n = input('Give number of sample n: ');
R = zeros();
for i=1:n
    r = mod(a*r+b,m);
    R(i) = r;
    %Printing generated Random numbers
    fprintf('%4.0f    ',r);
    p = mod(i,4);
    if(p==0)
        fprintf('\n');
    end;
end
fprintf('\n');
plot(R,'+b');

    