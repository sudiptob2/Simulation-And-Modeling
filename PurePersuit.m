T = input('Enter Persuit Time: ');
a = 100;
b = 250;
l = 0;
u = 50;
xb = a  + (b-a)*rand(T,1); %Random position for bomber  x axis
yb = l+(u-l)*rand(T,1); %Random position for bomber y axis
xf = zeros(1,T+1);
yf = zeros(1,T+1);
xf(1) = input('Initial Position of Fighter xf: ');
yf(1) = input('Initial Position Fighter yf : ');
vf = input('Velocity of the Fighter:');
D = input('Minimum Firing Distance: ');
status = 1;
dist = 0;
figure('color','white');
axis square;
for t=1:T
    dist = sqrt((xb(t)-xf(t))*(xb(t)-xf(t))+(yb(t)-yf(t))*(yb(t)-yf(t)));
    if dist<= D
        status = 0;
        hold on
         scatter(xb(t),yb(t),200,'.r');
         scatter(xf(t),yf(t),100,'+g');
        for i=1:t
            fprintf('%f  %f\n',xf(i),yf(i));
        end
        fprintf('Target destroyed at T = %.2f\n',t);
        fprintf('Fired at distance: %f\n',dist);
        break
    else
        
         hold on
         scatter(xb(t),yb(t),50,'b.');
         scatter(xf(t),yf(t),20,'+r');
         pause(.2);
    end
    yf(t+1)=yf(t)+vf*((yb(t)-yf(t))/dist);
    xf(t+1)=xf(t)+vf*((xb(t)-xf(t))/dist);

end
if status ==1
    fprintf('Target escaped\n');
end;
         



            