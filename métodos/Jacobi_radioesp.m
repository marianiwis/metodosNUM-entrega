%calcularemos la Qj y su radio espectral para ver si Jacobi converge
D = diag(diag(A)); %obtencion de la matriz diagonal
L = D-tril(A); %obtencion de la matriz diagonal superior L
U = D-triu(A);%obtencion de la matriz diagonal inferior u
 
J = D^-1*(L+U); % matriz de transicion de jacobi
reJ = max(abs(eigs(J))); %calculo del radio espectral
 
if reJ>=1
  disp('Radio Espectral (Jacobi) es');
  disp(reJ);
  disp('Radio Espectral (Jacobi) mayor que 1');
  disp('el método no converge');
return
end

%vamos a ver el de Qg que es de Gauss Seidel
G = (D-U)^-1*L; %matriz de transiscion de gauss seidel
reG = max(abs(eigs(G))); %dicen en el foro que es mejor usar eigs que eig

if reG>=1
  disp('Radio Espectral (Gauss) es');
  disp(reG);
  disp('Radio Espectral mayor que 1');
  disp('el método no converge');
return
end