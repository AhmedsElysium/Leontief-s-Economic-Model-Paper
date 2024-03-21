syms T

A=[0        1       0.1     1         0.05;
   T     0.05    0.1     0.0125    0.0125;
   T     0.1     0       0.0125    0.0125;
   T     0.05    0.3       0.1       0.15;
   T     0.15    0.2     0.3       0.1];


% I=eye(5);
% ab=eig(A);
% invDirect=(I-A)^-1;
% invSeries=cell(30,1);
% invSeries{1}=I

% for i=1:29
%     invSeries{i+1}=invSeries{i}+A^i;
% end


% plot for the relative prices
x=0:0.01:1;

figure(1)


plot(x,subs(eig(A),T,x))
hold on
plot([0,1],[1,1])
% legend('Gaussian','direct','Series')
% title('Production Level for GVMNT')
