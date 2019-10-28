y=@(x)2*x^2-5*x+3
x1=input('x1 value:');
x2=input('x2 value:');

if y(x1)*y(x2)>0
  fprintf('No root found in the range');
  return
elseif y(x1)==0
  fprintf('%f is the root',x1);
  return  
elseif y(x2)==0
  fprintf('%f is the root',x2);
  return
end

for i=1:100
  xh=(x1+x2)/2;
  if y(x1)*y(xh)<0
    x2=xh;
  elseif y(x2)*y(xh)<0
    x1=xh;  
  endif
  
  if y(x1)<1e-6
    break
  endif
endfor

fprintf('The root is %f',x1);