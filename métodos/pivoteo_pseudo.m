tam = size(A, 1);
Ab=[A b];
for i=1:tam-1 %Iniciar ciclo de diagonalizacion
  mayor = 0;
  filamayor = i;

    for t = i: tam %Iniciar ciclo para encontrar el mayor pivote en valor absoluto
        pivote = Ab(t,i); %Candidatos a pivote
            if mayor < abs(pivote) %Si el pivote es más grande que el número mayor declarado
              mayor = abs(pivote);
              filamayor = t;
            endif
    endfor

    for j = 1: tam+1 %Ciclo para hacer el cambio de filas
        nube = Ab(i,j);
        Ab(i,j) = Ab(filamayor,j);
        Ab(filamayor,j) = nube;
    endfor
endfor

