load data.mat;
A = data(:,3);
N = data(:,4);
A = A(2:end);
N = N(2:end);
PRECES = 100000;
num = 51;
cnum = numel(A);
X = zeros(cnum);
Y = zeros(cnum);
% Y����x=0,Y=A
X(:,1) = zeros(cnum,1);
Y(:,1) = A;
% �Խ�����X=Y
X(:,end) = A.*((0.5).^(1./N));
Y(:,end) = X(:,end);

%����ÿ��Ȧ�����
area = zeros(cnum,1);
carea = zeros(cnum,1);
xi = zeros(PRECES,cnum);
yi = zeros(PRECES,cnum);
for i = 1:cnum;
   xii = linspace(0,X(i,end),PRECES);
   a = A(i);
   n = N(i);
   %ȷ��x,a,n����y
   yii = a.*(1-(xii./a).^n).^(1./n);
   xi(:,i) = xii;
   yi(:,i) = yii;
   plot(xii,yii);
   hold on;
   %�����������
   area(i) = polyarea([0,xii,0],[0,yii,0]);
end
% ÿ���������
carea(1) = area(1);
carea(2:end) = area(2:end)-area(1:end-1);
% ÿ������ÿ������
cbarea = carea./num;
for barea = cbarea
    
end
