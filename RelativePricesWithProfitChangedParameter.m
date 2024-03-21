syms y
% y=1
A=[0.1      0.2     0.3     0.2     0.25*(1-y);
    0.2     0.15    0.3     0.05    0.15*(1-y);
    0.151   0.3     0.125   0.05    0.45*(1-y);
    0.159   0.25    0.075   0.2     0.15*(1-y);
    0.39    0.1     0.2     0.5     y]
I=eye(5)


NullSpace=null(I-A)
P1=NullSpace(1);
P2=NullSpace(2);
P3=NullSpace(3);
P4=NullSpace(4);
P5=NullSpace(5);

% syms iteration;
iteration=0:0.01:1;

% plot for the relative prices
figure(1)
plot(iteration,subs(P1,y,iteration))
hold on
plot(iteration,subs(P2,y,iteration))
hold on
plot(iteration,subs(P3,y,iteration))
hold on
plot(iteration,subs(P4,y,iteration))
hold on
plot(iteration,subs(P5,y,iteration))
hold on
legend('Price 1','Price 2','Price 3','Price 4','Price 5')

