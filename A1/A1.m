clear all;
clc;
n = input('Enter the number of particles to be initialized');
A = input('Enter the value of A');
C1 =input('Enter the value of C1');
C2 =input('Enter the value of C2');
min =-10;
max = 10;
x=linspace(-10,10,101);
y=linspace(-10,10,101);
z=zeros(101);
for p=1:101
    for q=1:101
        z(p,q)=schaffer(x(p),y(q));
    end
end
surf(x,y,z,'FaceAlpha',0.35,'FaceColor','interp','EdgeColor','none')
axis([-10 10 -10 10 0 3.5])
count=0;
title({'PSO ALGORITHM TO FIND MINIMUM VALUE OF SCHAFFER FUNCTION using 100 particles ';['#',num2str(count),]})
xlabel('X1 axis')
ylabel('X2 axis')
zlabel('FUNCTION VALUE axis')
legend('Schaffer function')
pause(2)
hold on
pos = zeros(n,2);
vel = zeros(n,2);
globalbest = zeros(1,2);
figure
for i=1:n
    pos(i,1)= min + (rand(1)*(max-min));
    pos(i,2)= min + (rand(1)*(max-min));
    if(i==1)
        globalbest(1,1)=pos(i,1);
        globalbest(1,2)=pos(i,2);
    end 
    s1 = schaffer(pos(i,1),pos(i,2));
    s2 = schaffer(globalbest(1,1),globalbest(1,2));
    if (s1<s2)
        gb = globalbest;
        globalbest(1,1)=pos(i,1);
        globalbest(1,2)=pos(i,2);
    end
    vel(i,:) = - (max-min) + 2*(max-min)*rand(1,2); 
end
position = pos;
counter=0;
pause(5)
while counter<=15
    for i=1:n
        for j=1:2
            vel(i,j) = A*vel(i,j) + C1 * rand(1) * (position(i,j)-pos(i,j)) + C2 * rand(1) *(globalbest(1,j)-pos(i,j));
        end
        pos(i,1)= pos(i,1)+vel(i,1);
        pos(i,2)= pos(i,2)+vel(i,2);
        s3 = schaffer(pos(i,1),pos(i,2));
        s4 = schaffer(position(i,1),position(i,2));
        if(s3<s4)
            position(i,:)=pos(i,:);
            
            s5=schaffer(pos(i,1),pos(i,2));
            s6=schaffer(globalbest(1,1),globalbest(1,2));
            if(s5<s6)
                gb=globalbest;
                globalbest = position(i,:);
                counter=0;
            end
        end
        
    end
    surf(x,y,z,'FaceAlpha',0.35,'FaceColor','interp','EdgeColor','none')
    axis([-10 10 -10 10 0 3.5])
    title({'PSO ALGORITHM TO FIND MINIMUM VALUE OF SCHAFFER FUNCTION using 100 particles';['#',num2str(count),]})
    hold on
    pointerx = [globalbest(1,1)-0.2,globalbest(1,1),globalbest(1,1)+0.2];
    pointery = [globalbest(1,2)-0.2,globalbest(1,2),globalbest(1,2)+0.2];
    pointerz = 0.5*ones(3);
    pointerz(2,2) = schaffer(globalbest(1,1),globalbest(1,2));
    surf(pointerx,pointery,pointerz,'FaceColor','Interp')
    xlabel('X1 axis')
    ylabel('X2 axis')
    zlabel('Value axis')
    legend('Schaffer function','Global best')
    hold off
    drawnow()
    count=count+1;
    s7 = schaffer(gb(1,1),gb(1,2));
    s8 = schaffer(globalbest(1,1),globalbest(1,2));
    if((abs(s7-s8))<10^-9)
        counter=counter+1;
    end
    gar(count)=schaffer(globalbest(1,1),globalbest(1,2));
end

k=1:count;
plot(k,gar)
