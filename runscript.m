load data.mat;
A = data(:,3);
N = data(:,4);
num = 120;
cnum = numel(A)-1;
X = zeros(cnum);
Y = zeros(cnum);
X(:,1) = zeros(cnum,1);
Y(:,1) = A(2:end);
X(:,end) = A(2:end)'.*((0.5).^(1/N(2:end)));
Y(:,end) = X(:,end);

for i = 1:cnum;
   xi = 0:0.0001:X(:,end);
   
end