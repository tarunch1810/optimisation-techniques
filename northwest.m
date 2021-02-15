%%
%19BCI7005
%%
%%
% |TRANSPORTATION PROBLEM USING NW METHOD| 

a=[2 7 4;3 3 1;5 4 7;1 6 2]
c=a;
n1=size(a,1);
n2=size(a,2);
sup=[5 8 7 14]
dem=[7 9 18]
a(n1+1,n2+1)=sum(sup);
a(1:n1,1+n1)=sup'
a(1+n2,1:n2)=dem
b=a;
A=0;
k=1;
m=1;
o=0;
f=max(n1,n2)
y=zeros(n1,n2)
while o<(n1+n2-1)
    o
    
    if sup(1,k)<=dem(1,m)
        A=A+c(k,m)*sup(1,k)
        y(k,m)=c(k,m)*sup(1,k)
        dem(1,m)=dem(1,m)-sup(1,k)
        k=k+1;
        o=o+1;
    elseif dem(1,m)<sup(1,k)
        A=A+c(k,m)*dem(1,m)
        y(k,m)=c(k,m)*dem(1,k)
        sup(1,k)=sup(1,k)-dem(1,m)
        m=m+1;
        o=o+1;
    else
        break
    end
end
A
y