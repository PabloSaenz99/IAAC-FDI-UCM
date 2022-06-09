%Lee el documento y crea la entrada y las salidas de la red

load('C:\Users\Pablo\Documents\MATLAB\P5\mfiles\datos3.mat')

xyz = datos.efector;							%Copio los datos de efector en xyz
final_xyz = xyz(end,:);							%Copio la linea final de xyz
xyz(end,:) = [];								%Elimino la línea final de xyz
final_xyz = repmat(final_xyz, size(xyz, 1), 1);	%Expando final_xyz en n filas (n es el num de cols de xyz)
input = [xyz final_xyz]';						%Fusiono ambas matrices

o_base = datos.angulo(:,1)';					%Devuelve la col 1 transformada en fila
o_hombro = datos.angulo(:,2)';					%Devuelve la col 2 transformada en fila
o_codo = datos.angulo(:,3)';
o_munieca = datos.angulo(:,4)';

nntool											%Abro nntool