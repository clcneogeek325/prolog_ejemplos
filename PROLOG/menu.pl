

use_module(library(pce)).

menu:-new(Ventanita, dialog('Menu Grafico')),

new(Opba, label(opba, 'Operaciones Básicas ')),

new(Sumar, button('Sumar', message(@prolog, vsumar))),

new(Multiplicar, button('Multiplicar', message(@prolog, vmultiplicar))),

new(Dividir, button('Dividir', message(@prolog, vdividir))),
new(Restar, button('Restar', message(@prolog, vrestar))),
new(Salir, button('Salir', message(Ventanita, destroy))),
new(Arfi, label(arfi, ' Area de Figuras ')), % Etiqueta Area de Figuras
new(Cuadrado, button('Cuadrado', message(@prolog, vcuadrado))),
new(Rectangulo, button('Rectángulo', message(@prolog, vrectangulo))),
new(Triangulo, button('Triángulo', message(@prolog, vtriangulo))),
new(Circulo, button('Círculo', message(@prolog, vcirculo))),
send(Ventanita,append,Opba),
send(Ventanita,append,Sumar),
send(Ventanita,append,Multiplicar),
send(Ventanita,append,Dividir),
send(Ventanita,append,Restar),
send(Ventanita,append,Arfi),
send(Ventanita,append,Cuadrado),
send(Ventanita,append,Rectangulo),
send(Ventanita,append,Triangulo),
send(Ventanita,append,Circulo),
send(Ventanita,append,Salir),
send(Ventanita,open).

vsumar:-new(Vsumar, dialog('SUMA DE DOS NÚMEROS')),
new(Etisuma,label(etiqueta,'SUMAREMOS DOS NÚMEROS')),
new(Caja1, text_item('Numero 1')),
new(Caja2, text_item('Numero 2')),
new(Caja3, text_item('Resultado')),
new(Boton, button(' Sumar ',message(@prolog,sumar,Caja1,Caja2,Caja3))),
send(Vsumar, append, Etisuma),
send(Vsumar, append, Caja1),
send(Vsumar, append, Caja2),
send(Vsumar, append, Caja3),
send(Vsumar, append, Boton),
send(Vsumar, open).

sumar(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
                get(Caja2,value,Valor2),
                send(Caja3,value,Valor1+Valor2).


vmultiplicar:-new(Vmultiplicar, dialog('MULTIPLICACIÓN DE DOS NÚMEROS')),
new(Etimultiplica,label(etiqueta,'MULTIPLICAREMOS DOS NÚMEROS')),
new(Caja1, text_item('Numero 1')),
new(Caja2, text_item('Numero 2')),
new(Caja3, text_item('Resultado')),
new(Boton, button(' Multiplicar ',message(@prolog,multiplicar,Caja1,Caja2,Caja3))),
send(Vmultiplicar, append, Etimultiplica),
send(Vmultiplicar, append, Caja1),
send(Vmultiplicar, append, Caja2),
send(Vmultiplicar, append, Caja3),
send(Vmultiplicar, append, Boton),
send(Vmultiplicar, open).

multiplicar(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
                get(Caja2,value,Valor2),
                send(Caja3,value,Valor1*Valor2).
                
vdividir:-new(Vdividir, dialog('DIVISIóN DE DOS NÚMEROS')),
new(Etidivision,label(etiqueta,'DIVIDIREMOS DOS NÚMEROS')),
new(Caja1, text_item('Numero 1')),
new(Caja2, text_item('Numero 2')),
new(Caja3, text_item('Resultado')),
new(Boton, button(' Dividir ',message(@prolog,dividir,Caja1,Caja2,Caja3))),
send(Vdividir, append, Etidivision),
send(Vdividir, append, Caja1),
send(Vdividir, append, Caja2),
send(Vdividir, append, Caja3),
send(Vdividir, append, Boton),
send(Vdividir, open).

dividir(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
                get(Caja2,value,Valor2),
                send(Caja3,value,Valor1/Valor2).
                
                
vrestar:-new(Vrestar, dialog('RESTA DE DOS NÚMEROS')),
new(Etiresta,label(etiqueta,'RESTAREMOS DOS NÚMEROS')),
new(Caja1, text_item('Numero 1')),
new(Caja2, text_item('Numero 2')),
new(Caja3, text_item('Resultado')),
new(Boton, button(' Restar ',message(@prolog,restar,Caja1,Caja2,Caja3))),
send(Vrestar, append, Etiresta),
send(Vrestar, append, Caja1),
send(Vrestar, append, Caja2),
send(Vrestar, append, Caja3),
send(Vrestar, append, Boton),
send(Vrestar, open).

restar(Caja1,Caja2,Caja3):-get(Caja1,value,Valor1),
                get(Caja2,value,Valor2),
                send(Caja3,value,Valor1-Valor2).
                

vcuadrado:-new(Vcuadrado, dialog('ÁREA DE UN CUADRADO')),
new(Eticuadrado,label(etiqueta,'CALCULAREMOS EL ÁREA DE UN CUADRADO')),
new(Caja1, text_item('Valor de un lado')),
new(Caja2, text_item('Su área es')),
new(Boton, button(' Calcular Area ',message(@prolog,areaCuadrado,Caja1,Caja2))),
send(Vcuadrado, append, Eticuadrado),
send(Vcuadrado, append, Caja1),
send(Vcuadrado, append, Caja2),
send(Vcuadrado, append, Boton),
send(Vcuadrado, open).

areaCuadrado(Caja1,Caja2):-get(Caja1,value,Valor1),
                send(Caja2,value,Valor1*Valor1).
                
                
vrectangulo:-new(Vrectangulo, dialog('ÁREA DE UN RECTÁNGULO')),
new(Etirectangulo,label(etiqueta,'CALCULAREMOS EL ÁREA DE UN RECTÁNGULO')),
new(Caja1, text_item('Valor de la base')),
new(Caja2, text_item('Valor de la altura')),
new(Caja3, text_item('Su área es')),
new(Boton, button(' Calcular Area ',message(@prolog,areaRectangulo,Caja1,Caja2,Caja3))),
send(Vrectangulo, append, Etirectangulo),
send(Vrectangulo, append, Caja1),
send(Vrectangulo, append, Caja2),
send(Vrectangulo, append, Caja3),
send(Vrectangulo, append, Boton),
send(Vrectangulo, open).

areaRectangulo(Caja1,Caja2,Caja3):-get(Caja1, value, Valor1),
                get(Caja2, value, Valor2),
                send(Caja3, value, Valor1*Valor2).
                
                
vtriangulo:-new(Vtriangulo, dialog('ÁREA DE UN TRIÁNGULO')),
new(Etitriangulo,label(etiqueta,'CALCULAREMOS EL ÁREA DE UN RECTÁNGULO')),
new(Caja1, text_item('Valor de la base')),
new(Caja2, text_item('Valor de la altura')),
new(Caja3, text_item('Su área es')),
new(Boton, button(' Calcular Area ',message(@prolog,areaTriangulo,Caja1,Caja2,Caja3))),
send(Vtriangulo, append, Etitriangulo),
send(Vtriangulo, append, Caja1),
send(Vtriangulo, append, Caja2),
send(Vtriangulo, append, Caja3),
send(Vtriangulo, append, Boton),
send(Vtriangulo, open).

areaTriangulo(Caja1,Caja2,Caja3):-get(Caja1, value, Valor1),
                get(Caja2, value, Valor2),
                send(Caja3, value, (Valor1*Valor2)/2).
                
                
vcirculo:-new(Vcirculo, dialog('ÁREA DE UN CIRCULO')),
new(Eticirculo,label(etiqueta,'CALCULAREMOS EL ÁREA DE UN CIRCULO')),
new(Caja1, text_item('Valor del radio')),
new(Caja2, text_item('Su área es')),
new(Boton, button(' Calcular Area ',message(@prolog,areaCirculo,Caja1,Caja2))),
send(Vcirculo, append, Eticirculo),
send(Vcirculo, append, Caja1),
send(Vcirculo, append, Caja2),
send(Vcirculo, append, Boton),
send(Vcirculo, open).

areaCirculo(Caja1,Caja2):-get(Caja1, value, Valor1),
                send(Caja2, value, 3.1416*(Valor1*Valor1)).

