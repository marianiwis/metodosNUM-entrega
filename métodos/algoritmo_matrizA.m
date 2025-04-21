m=7;
n=8;
b=zeros((m*n),1);
A=zeros((m*n),(n*(m-1)+(m*(n-1))));
f = m*n;
c = n*(m-1)+(m*(n-1));
fila =1
for i=1:n
  for j=1:m
    abajo = n*(m-1) + (j-1)*(n-1) + i;
    arriba = abajo -1;
    derecha = (i-1)*(m-1) + j;
    izquierda = derecha -1;
    if ((mod(i,2) == 0)&(mod(j,2) == 0))
      if (i ~= 1)
        A(fila,arriba) =1;
       endif
       if (i ~= n)
         A(fila, abajo) = -1;
       endif
       if (j ~= 1)
         A(fila,izquierda) = -1;
       endif
       if (j ~= m)
         A(fila,derecha) =1;
       endif
       if (i ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosv(1, j);
       endif
       if (i == n)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosv(2, j);
       endif
       if (j ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosh(i, 1);
       endif
       if (j == m)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosh(i, 2);
       endif 
    endif
    if ((!(mod(i,2) == 0))&(mod(j,2) == 0))
      if (i ~= 1)
        A(fila,arriba) =1;
       endif
       if (i ~= n)
         A(fila, abajo) = -1;
       endif
       if (j ~= 1)
         A(fila,izquierda) = 1;
       endif
       if (j ~= m)
         A(fila,derecha) =-1;
       endif
       if (i ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosv(1, j);
       endif
       if (i == n)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosv(2, j);
       endif
       if (j ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosh(i, 1);
       endif
       if (j == m)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosh(i, 2);
       endif
       
    endif
    if ((mod(i,2) == 0)&(mod(j,2) ~= 0))
      if (i ~= 1)
        A(fila,arriba) =-1;
       endif
       if (i ~= n)
         A(fila, abajo) = 1;
       endif
       if (j ~= 1)
         A(fila,izquierda) = -1;
       endif
       if (j ~= m)
         A(fila,derecha) =1;
       endif
       if (i ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosv(1, j);
       endif
       if (i == n)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosv(2, j);
       endif
       if (j ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosh(i, 1);
       endif
       if (j == m)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosh(i, 2);
       endif 
    endif
     if ((mod(i,2) ~= 0)&(mod(j,2) ~= 0))
      if (i ~= 1)
        A(fila,arriba) =-1;
       endif
       if (i ~= n)
         A(fila, abajo) = 1;
       endif
       if (j ~= 1)
         A(fila,izquierda) = 1;
       endif
       if (j ~= m)
         A(fila,derecha) =-1;
       endif
       if (i ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosv(1, j);
       endif
       if (i == n)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosv(2, j);
       endif
       if (j ==1)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) + flujosh(i, 1);
       endif
       if (j == m)
         b((i-1)*m +j,1) = b((i-1)*m +j,1) - flujosh(i, 2);
       endif 
    endif
  fila = fila+1
  endfor
 endfor
