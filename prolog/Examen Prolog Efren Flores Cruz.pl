% Autor:
% Fecha: 03/06/2013
picture:-new(Ventana,picture('Ventaneishon de Practiqueishon',size(450,350))),

           new(Fondo,label(etiqueta2,image('C:/img/1.jpg'))),
           send(Ventana,display,Fondo,point(0,0)),

           new(Titulo,label(etiquetini,'Conversion de Grados',font(arial,bold,24))),
           send(Ventana,display,Titulo,point(40,20)),

           new(TxtNombre,text_item('Introducir Temperatura(°C)')),
           send(Ventana,display,TxtNombre,point(25,68)),

           %agregar un radio button
           new(Temp,menu('Convertir a ')),
           send_list(Temp,append,['Kelvin','Fahrenheit']),
           send(Ventana,display,Temp,point(10,110)),

           new(TxtRes,text_item('EL resultado es: ')),
           send(Ventana,display,TxtRes,point(55,180)),


           new(BtnConv,button('Convertir',message(@prolog,datos,
           TxtNombre,Temp?selection,TxtRes))),
           send(Ventana,display,BtnConv,point(50,280)),

           new(BtnCerrar,button('Cerrar',message(@prolog,cerrarVentana,Ventana))),
           send(Ventana,display,BtnCerrar,point(180,280)),

           send(Ventana,open,point(170,100)).

cerrarVentana(Ventana):-send(Ventana,destroy).

datos(TxtNombre,Temp,TxtRes):-get(Temp,value,X),get(TxtNombre,value,Nom2),
 X=='Fahrenheit',send(TxtRes,value,Nom2*1.8+32);
 
  get(Temp,value,X),get(TxtNombre,value,Nom2),X == 'Kelvin',
  send(TxtRes,value,Nom2+273.15).
