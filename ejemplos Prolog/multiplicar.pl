% Autor:
% Fecha: 18/05/2013

multi(N):-multi(N,0).
multi(N,I):-I=10,!;I2 is I+1,
        display(N),
        display('*'),
        display(I2),
        R is N*I2,
        display('='),
        display(R),nl,
        multi(N,I2).