m=7;
n=8;
for i=1:n*m-1
  if (A(i,i) == 0) %encuentra una entrada de la diagonal en 0
    j = i + 1;
    while (j < n*m && A(j,i) == 0) %recorre las casillas de esa columna hacia abajo buscando una entrada != 0
      j = j + 1;
    endwhile
    if (j < m*n)
      for k=1:m*n-1 %intercambia las filas
        sweep = A(i,k);
        A(i,k) = A(j,k);
        A(j,k) = sweep;
      endfor
    endif
  endif
  if (A(i,i) == 0) %no encuentra una entrada != 0 debajo
    j = i-1;
    while (j > 0 && A(j,i) == 0) %busca la entrada en las filas de arriba
      j = j - 1;
    endwhile
    if (j > 0)
      for k=1:n*m-1
        A(i,k) = A(i,k) + A(j,k); %suma las filas
      endfor
    endif
  endif
endfor
r = rank(A);
d = det(A);
disp(d);
disp(r);

