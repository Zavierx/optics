function dataPoints = mapContours(A,N,num)
    %���շ���(x/a)^n+(y/a)^n=1��ȷ������ͼ
    syms x y a n;
    F = '(x/a)^n+(y/a)^n=1';
    %������num X num����
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
