clear
A = readtable('polucion.csv');
%%
A(:,3:end)=[];
%%
A(1:26,:)=[];
A(65:end,:)=[];
%%
x=A{:,1};
y=A{:,2};
%%
%F1 = plot(x, y);
F1 = plot(y, '-go');