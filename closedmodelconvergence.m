A=[0.1      0.2     0.3     0.2     0.05;
    0.2     0.15    0.3     0.05    0.15;
    0.151   0.3     0.125   0.05    0.45;
    0.159   0.25    0.075   0.2     0.15;
    0.39    0.1     0.2     0.5     0.2]
I=eye(5)

X=[3;2;5;6;2]
xk=zeros(5,31);

for i = 1:11
Ax=(A^i)*X
xk(1,i)=Ax(1);
xk(2,i)=Ax(2);
xk(3,i)=Ax(3);
xk(4,i)=Ax(4);
xk(5,i)=Ax(5);
end
NullSpace=null(I-A)

syms iteration;
iteration=0:1:10;

% plot for the relative prices
figure(1)
plot(iteration,xk(1,iteration+1))
hold on
plot(iteration,xk(2,iteration+1))
hold on
plot(iteration,xk(3,iteration+1))
hold on
plot(iteration,xk(4,iteration+1))
hold on
plot(iteration,xk(5,iteration+1))
legend('Price 1','Price 2','Price 3','Price 4','Price 5')

% plot of ratios
figure(2)
plot(iteration,xk(1,iteration+1)/NullSpace(1))
hold on
plot(iteration,xk(2,iteration+1)/NullSpace(2))
hold on
plot(iteration,xk(3,iteration+1)/NullSpace(3))
hold on
plot(iteration,xk(4,iteration+1)/NullSpace(4))
hold on
plot(iteration,xk(5,iteration+1)/NullSpace(5))
legend('Ratio 1','Ratio 2','Ratio 3','Ratio 4','Ratio 5')



