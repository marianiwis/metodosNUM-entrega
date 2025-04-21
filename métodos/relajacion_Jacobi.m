%como los metodos de Gauss y Jacobi no convergen
%trataremos de relajarlos

%primero hacemos una matriz identidad
i = 55;
j = 55;
Id = zeros(i,j);

for k=1:i
  Id(k,k) = 1;
endfor

%luego el coso de relajacion
Q = w*J + (1 - w)Id %w es una incognita

%despues tenemos que sacar los calores propios de esa matriz
lambda = eigs(Q);

%after va el modulo de lambda y estudiamos su signo