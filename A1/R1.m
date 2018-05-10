clear all;clc;
n=1000;
A=0.75;
C1=1;
C2=1;
pos=zeros(n,2);
vel=zeros(n,2);
globalbest=zeros(1,2);
% x=linspace(-10,10,101);
% y=linspace(-10,10,101);
% for p=1:101
%     for q=1:101
%         z(p,q)=schaffer(x(p),y(q));
%     end
% end

for i=1:n
    pos(i,1)=(-10+(rand(1)*20));
    posbest(i,1)=pos(i,1);
    pos(i,2)=(-10+(rand(1)*20));
    posbest(i,2)=pos(i,2);
end


globalbest(1,1)=pos(1,1);
globalbest(1,2)=pos(1,2);
for i=1:n
    s5 = schaffer(globalbest(1,1),globalbest(1,2));
    s6 = schaffer(pos(i,1),pos(i,2));
    if (s6<s5)
        globalbest(1,1)=pos(i,1);
        globalbest(1,2)=pos(i,2);      
    end
end

while true
    
    for i=1:n 
           vel(i,1) = A*vel(i,1) + C1 * rand(1)*posbest(i,1) + C2*rand(1)*globalbest(1,1);
           vel(i,2) = A*vel(i,2) + C1 * rand(1)*posbest(i,2) + C2*rand(1)*globalbest(1,2);
           pos(i,1) = pos(i,1) + vel(i,1);
           pos(i,2) = pos(i,2) + vel(i,2);
            s1 = schaffer(pos(i,1),pos(i,2));
            s2 = schaffer(posbest(i,1),posbest(i,2));
            if(s1<s2)
                posbest(i,1)=pos(i,1);
                posbest(i,2)=pos(i,2);
            end
            s3 = schaffer(posbest(i,1),posbest(i,2));
            s4 = schaffer(globalbest(1,1),globalbest(1,2));
            if(s3<s4)
                globalbest(1,1)=posbest(i,1);
                globalbest(1,2)=posbest(i,2);
            end
    end
    
    if(globalbest(1,1)==0 && globalbest(1,2)==0)
        break;
    end
    disp(globalbest)
%     surf(x,y,z,'FaceAlpha',0.4,'FaceColor','interp','EdgeColor','none')
%     axis([-10,10,-10,10,0,4])
%     hold on
%     pp=[globalbest(1)-0.15,globalbest(1),globalbest(1)+0.15;globalbest(2)-0.15,globalbest(2),globalbest(2)+0.15];
%     ppz=ones(3);
%     surf(pp(1,:),pp(2,:),ppz)
%     title(num2str(j))
%     hold off
    
end

