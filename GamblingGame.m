G = input('Give the number of game: ');
win =0;
nflip =0;
fprintf('Game no. slno.     Random no.     H/T      c.Head   c.Tail Difference\n');
for i=1:G
    h=0;
    t=0;
    r=0;
    slno = 1;
    while true
        
        r = randi(10); 
        fprintf('%d%10d%10d',i,slno,r);
        if mod(r,2)==0
            h=h+1;
            fprintf('             H     ');
        else
            t=t+1;
            fprintf('             T     ');
        end
         
        d = abs(h-t);
        fprintf('%5d%10d%10d',h,t,d);
        if d>=3
            win = win + (8-slno); % when loses it retusn negative
            nflip = nflip+ slno;
            fprintf('  Win %d\n',8-slno);
            break;
        end
        slno = slno+1;
        fprintf('\n');
       
    end
end
avg = nflip/G;
fprintf('avg flip requred per game: %.3f\n',avg);
fprintf('Total won: %d\n',win);








    
            