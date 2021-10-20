clc;
frs = 150;
N = floor(length(X)/frs);
x = [];
y = [];
z = [];
x1 = [];
y1 = [];
z1 = [];
x = X;
y = Y;
z = Z;
x1 = X1;
y1 = Y1;
z1 = Z1;
n = length(x);
a0 = [x y z]';
g0 = [x1 y1 z1]';
%plot(a0(3,:))
b = (sum(a0'))'/n;
q1 = atan(b(2)/b(3));
q2 = atan(b(1)/(b(2)*sin(q1)+b(3)*cos(q1)));
r1 = [cos(q2) -sin(q1)*sin(q2) -cos(q1)*sin(q2)];
r2 = [0 cos(q1) -sin(q1)];
r3 = [sin(q2) sin(q1)*cos(q2) cos(q1)*cos(q2)];
r = [r1;r2;r3];
a1 = r*a0;
g1 = r*g0;
a1z = sum(a1(3,:))/n;
a2 = [a1(1,:);a1(2,:);a1(3,:)-a1z];
ah = sqrt(a2(1,:).^2 + a2(2,:).^2);
av = abs(a2(3,:));
gh = sqrt(g1(1,:).^2 + g1(2,:).^2);
gv = abs(g1(3,:));
l = 1:600;
adata = [ah;av;gh;gv];
save('adata.mat','adata');
clear all
%A = a2(2,:);
%a = A(500:1000);
%c = y(500:1000);
%plot(l,a2(:,1:600),'LineWidth',1)
%figure
%plot(c)