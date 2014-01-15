% Autor:
% Fecha: 18/05/2013
factorial(N):-fact(N,1).
fact(N,W) :- N>1-> N1 is N - 1,
   F is W*N1,
   T is W+F,
   write(T),
   write('  '),
   fact(N1,T).
