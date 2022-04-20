clc;
x = X(1:3000);
y = Y(1:3000);
z = Z(1:3000);
x1 = X1(1:3000);
y1 = Y1(1:3000);
z1 = Z1(1:3000);
n = length(x);
a0 = [x y z]';
g0 = [x1 y1 z1]';
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
    figure(1)
    subplot(311),plot(a2(1,:));
    subplot(312),plot(a2(2,:));
    subplot(313),plot(a2(3,:));
    figure(2)
    subplot(311),plot(g1(1,:));
    subplot(312),plot(g1(2,:));
    subplot(313),plot(g1(3,:));
    