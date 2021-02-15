



syms x y t k l
a=input('enter cofficient of second order derivative of varible y')
b=input('enter cofficient of first order derivative of varible y')
c=input('enter cofficient of varible y')
f=a*(x^2)+b*x+c;
r=solve(f)
if(imag(r(1))==0)

    if (r(1)~=r(2))
  y=k*exp(r(1)*t)+l*exp(r(2)*t)
else
     y=k*exp(r(1)*t)+l*t*exp(r(1)*t)
    end
     
else
    y=exp(real(r(1))*t)*(k*cos(imag(r(1))*t)+l*sin(imag(r(1))*t))
end
