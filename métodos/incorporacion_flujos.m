n = 8;
m = 7;
z = 1;
for k=1:41
  s = flujos(k,1);
  i = j = 0;
  if (s < 49)
    i = floor ((s-1)/(m-1)) +1;
    j = mod((s-1),(m-1));
    node = (i-1)*m + j;
    b(node,1) = b(node,1) + A(node,s)*(flujos(k,2))*(-1);
    node = node +1;
    b(node,1) = b(node,1) + A(node,s)*(flujos(k,2))*(-1);
  endif
  if (s >= 49)
    i = mod((s-(n*(m-1))),(n-1));
    j = floor((s-(n*(m-1)))/(n-1)) +1;
    if (i == 0)
      j = j-1;
      i = m;
    endif
    node = (i-1)*m + j;
    b(node,1) = b(node,1) + A(node,s)*(flujos(k,2))*(-1);
    node = node +7;
    b(node,1) = b(node,1) + A(node,s)*(flujos(k,2))*(-1);
  endif
endfor
for k=1:41
  s = flujos(k,1) - (k-1);
  A(:,s) = [];
endfor
A(:,50) = []; %eliminacion de s81, la calle cortada
A(20,:) = []; %eliminacion de alguna fila para volver la matriz 55x55
d = det(A);
disp(d);
r = rank(A);
disp(r);
