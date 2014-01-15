% Autor:
% Fecha: 04/06/2013

conexion:-odbc_connect('Prolog',_,
           [user(root),
           password(''),
           alias('BD'),
           open(once)]).
           
           
insertar:-conexion,
          odbc_query('BD',
          'INSERT INTO producto (nombre,descripcion,cantidad)
           VALUES("Carnitas", "COMIDA","7")'),
           write('Dato insertado').


eliminar:- conexion,
           odbc_query('BD',
           'delete from producto where nombre="maruchas"'),
           write('Dato eliminado').


actualizacion:- conexion,
           odbc_query('BD',
           'update producto
           set  descripcion="helado",
           cantidad="23" where nombre="cerveza"').

consultar(X):-conexion,
           odbc_query('BD',
           'select * from producto',X ).
           
consulta2(Columna) :-conexion,
           odbc_query('BD',
           'SELECT nombre FROM producto ',
           row(Columna)).

consulta3(Columna) :-conexion,
           odbc_query('BD',
           'SELECT nombre FROM producto where nombre="cerveza"',
           row(Columna)).
           
busqueda(Datos):- conexion,
          findall(Fila,odbc_query('BD',
         'select nombre from producto',
         row(Fila)),
         Datos).

