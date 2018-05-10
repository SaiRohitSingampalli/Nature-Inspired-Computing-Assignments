clc;
clear all
close all;
x1=-10:0.05:10;
x2=-10:0.05:10;
for i=1:length(x1)
    for j=1:length(x2)
          y(i,j)=schaffer(x1(i),x2(j));
    end
end
mesh(x1,x2,y)
xlabel('X1')
ylabel('X2')
zlabel('Y')
axis([-10 10 -10 10 0 2])
title('Desired Schaffer Function')
iter=20;
% m=4;
% n=4;
step=0.1;
for m=1:3
    for n=1:2
       W1=rand(m,2);
       W2=rand(n,m);
       W3=rand(1,n);
       b1=rand(m,1);
       b2=rand(n,1);
       b3=rand;
       figure 
       y3=zeros(length(x1),length(x2));
       for itr=1:iter
       disp('iteration')
       disp(itr)
       for i=1:length(x1)
          for j=1:length(x2)
             p=[x1(i);x2(j)];
             y1=tanh(W1*p+b1);
             y2=tanh(W2*y1+b2);
             y3(i,j)=W3*y2+b3;
        
             e(i,j)=y(i,j)-y3(i,j);
        
             W3=W3+2*step*e(i,j)*y2';
             b3=b3+2*step*e(i,j);
        
             W2=W2+2*step*e(i,j)*diag(1-y2.^2)*W3'*y1';
             b2=b2+2*step*e(i,j)*diag(1-y2.^2)*W3';
      
             W1=W1+2*step*e(i,j)*diag(1-y1.^2)*W2'*diag(1-y2.^2)*W3'*p';
             b1=b1+2*step*e(i,j)*diag(1-y1.^2)*W2'*diag(1-y2.^2)*W3';
        

          end
       end
 

       mesh(x1,x2,y3);
       xlabel('X1')
       ylabel('X2')
       zlabel('Y')
       axis([-10 10 -10 10 0 2])
       title({'Evolution of Function- iteration',num2str(itr),'when M=',num2str(m),'N=',num2str(n)})
       drawnow()
       end
    end
end


