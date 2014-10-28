load data.mat;
A = data(:,3);
N = data(:,4);
A = A(2:end);
N = N(2:end);
num = 51;
cnum = numel(A);
X = zeros(cnum);
Y = zeros(cnum);
% Y轴上x=0,Y=A
X(:,1) = zeros(cnum,1);
Y(:,1) = A;
% 对角线上X=Y
X(:,end) = A.*((0.5).^(1./N));
Y(:,end) = X(:,end);

%计算每个圈的面积
area = zeros(cnum,1);
carea = zeros(cnum,1);
xi = zeros(10000,cnum);
yi = zeros(10000,cnum);
for i = 1:cnum;
   xii = linspace(0,X(i,end),10000);
   a = A(i);
   n = N(i);
   %确定x,a,n后求y
   yii = a.*(1-(xii./a).^n).^(1./n);
   xi(:,i) = xii;
   yi(:,i) = yii;
   plot(xii,yii);
   hold on;
   %计算多边形面积
   area(i) = polyarea([0,xii,0],[0,yii,0]);
end
% 每个欢的面积
carea(1) = area(1);
carea(2:end) = area(2:end)-area(1:end-1);
