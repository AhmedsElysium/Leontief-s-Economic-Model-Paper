A=[0        1       0.1     1         0.05;
   0.05     0.05    0.1     0.0125    0.0125;
   0.05     0.1     0       0.0125    0.0125;
   0.05     0.05    0.3       0.1       0.15;
   0.05     0.15    0.2     0.3       0.1];

D=[200;300;50;40;100];

I=eye(5);
ab=eig(A);
invDirect=(I-A)^-1;
invSeries=cell(30,1);
invSeries{1}=I

for i=1:29
    invSeries{i+1}=invSeries{i}+A^i;
end

Xgaussian=linsolve(I-A,D)

Xdirect=invDirect*D

Xseries=cell(30,1);
for i= 1:30
Xseries{i}=invSeries{i}*D;
end

X1=zeros(30,1);
for i= 1:30
X1(i)=Xseries{i}(1);
end

X2=zeros(30,1);
for i= 1:30
X2(i)=Xseries{i}(2);
end

X3=zeros(30,1);
for i= 1:30
X3(i)=Xseries{i}(3);
end

X4=zeros(30,1);
for i= 1:30
X4(i)=Xseries{i}(4);
end

X5=zeros(30,1);
for i= 1:30
X5(i)=Xseries{i}(5);
end

% plot for the relative prices
iteration=0:1:29;

figure(1)

plot([0 29],[Xgaussian(1) Xgaussian(1)])
hold on
plot([0 29],[Xdirect(1) Xdirect(1)])
hold on
plot(iteration,X1(iteration+1))
legend('Gaussian','direct','Series')
title('Production Level for GVMNT')

figure(2)

plot([0 29],[Xgaussian(2) Xgaussian(2)])
hold on
plot([0 29],[Xdirect(2) Xdirect(2)])
hold on
plot(iteration,X2(iteration+1))
legend('Gaussian','direct','Series')
title('Production Level for FOOD')

figure(3)

plot([0 29],[Xgaussian(3) Xgaussian(3)])
hold on
plot([0 29],[Xdirect(3) Xdirect(3)])
hold on
plot(iteration,X3(iteration+1))
legend('Gaussian','direct','Series')
title('Production Level for HLTH')

figure(4)

plot([0 29],[Xgaussian(4) Xgaussian(4)])
hold on
plot([0 29],[Xdirect(4) Xdirect(4)])
hold on
plot(iteration,X4(iteration+1))
legend('Gaussian','direct','Series')
title('Production Level for MTRL')

figure(5)

plot([0 29],[Xgaussian(5) Xgaussian(5)])
hold on
plot([0 29],[Xdirect(5) Xdirect(5)])
hold on
plot(iteration,X5(iteration+1))
legend('Gaussian','direct','Series')
title('Production Level for TECH')
