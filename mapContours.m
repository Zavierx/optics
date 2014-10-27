function dataPoints = mapContours(A,N,num)
    %按照方程(x/a)^n+(y/a)^n=1来确定点阵图
    syms x y a n;
    F = '(x/a)^n+(y/a)^n=1';
    %矩形有num X num个点
%     pointNum = num*num;
    cnum = numel(A)-1;
%     cpnum = pointNum/cnum;
    cpnum = 51;
    X = zeros(cnum);
    Y = zeros(cnum);
    X(:,1) = zeros(cnum,1);
    Y(:,1) = A(2:end);
    X(:,end) = A(2:end).*(0.5).^N(2:end);
    Y(:,end) = X(:,end);
    Area = zeros(cnum);
    AREA = 
    
end
