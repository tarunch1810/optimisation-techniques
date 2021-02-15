%%
% |19BCI7005|
%%
% |FIBONACCI METHOD| 

clc;

clear all;
n=4;%number of iterations
N=n+1;
a=10; %lower limit
b=20;% upper limit
fold=1;
fnew=1;
func = @(x)(.65-[.75/(1+x^2)]-.65*x*atan(1/x));
for i=1:N
    if i==1 || i==2
    f(i)=1;
   continue;
    end
    f(i)=fold+fnew;
    fold=fnew;
    fnew=f(i);
end
L2=(b-a)*f(N-2)/f(N);
j=2;
while j<N
L1=(b-a);
if L2>L1/2
    anew=b-L2;
    bnew=a+L2;
else if L2<=L1/2
        anew=a+L2;
        bnew=b-L2;
    end
end
k1=func(anew);
k2=func(bnew);
if k2>k1
    b=bnew;
    L2=f(N-j)*L1/f(N-j+2);
else if k2<k1
        a=anew;
        L2=f(N-j)*L1/f(N-(j-2));
    else if k2==k1
            b=bnew;
            L2=f(N-j)*[b-a]/f(N-(j-2));
            j=j+1;
        end
    end
end
j=j+1;
end
disp(a);
disp(b);
