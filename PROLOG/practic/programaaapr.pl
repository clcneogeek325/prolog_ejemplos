% Autor:
% Fecha: 03/06/2013
programa1:-new(Ventana,picture('Ventaneishon de Practiqueishon', size(300,400))),

           new(Fondo,label(etiqueta2,image('C:/img/1.jpg'))),
           send(Ventana,display,Fondo,point(0,0)),

           new(Titulo,label(etiquetini,'Datos de Alumno',font(arial,bold,24))),
           send(Ventana,display,Titulo,point(40,20)),

           new(TxtNombre,text_item('Nombre')),
           send(Ventana,display,TxtNombre,point(25,68)),
           
           %agregar un radio button
           new(Sexo,menu('Sexo')),
           send_list(Sexo,append,['Masculino','Femenino']),
           send(Ventana,display,Sexo,point(20,120)),

           %agregar un lista de opciones
           new(Carrera,menu('Carrera',cycle)), %menu de seleccion  comboBox
           send_list(Carrera,append,['Sistemas','Desarrollo','Gestion']),
           send(Ventana,display,Carrera,point(20,180)),
           
           %agregar la edad
           new(Edad,int_item('Edad',low:=18,high:=40)),
           send(Ventana,display,Edad,point(20,230)),
           
           
           new(BtnEnviar,button('Enviar',message(@prolog,datos,TxtNombre,Sexo?selection,Carrera?selection,Edad?selection))),
           send(Ventana,display,BtnEnviar,point(50,280)),
           

           new(BtnCerrar,button('Cerrar',message(@prolog,cerrarVentana,Ventana))),
           send(Ventana,display,BtnCerrar,point(180,280)),
           
           
           
           send(Ventana,open,point(170,100)).
           
cerrarVentana(Ventana):-send(Ventana,destroy).



datos(TxtNombre,Sexo,Carrera,Edad):-new(Ventana,picture('Ventaneishon de Practiqueishon', size(300,400))),

 new(Fondo,label(etiqueta2,image('C:/img/2.jpg'))),
           send(Ventana,display,Fondo,point(0,0)),

           new(Titulo,label(etiquetini,'Datos de Alumno',font(arial,bold,24))),
           send(Ventana,display,Titulo,point(40,20)),

           new(TxtNombre2,text_item('Nombre',TxtNombre)),
           send(Ventana,display,TxtNombre2,point(25,68)),
           
           new(TxtSexo,text_item('Sexo',Sexo)),
           send(Ventana,display,TxtSexo,point(25,120)),
           
           new(TxtCarrera,text_item('Carrera',Carrera)),
           send(Ventana,display,TxtCarrera,point(25,180)),

           new(TxtEdad,text_item('Edad',Edad)),
           send(Ventana,display,TxtEdad,point(25,220)),

           new(BtnCerrar,button('Cerrar',message(@prolog,cerrarVentana,Ventana))),
           send(Ventana,display,BtnCerrar,point(180,280)),

           send(Ventana,open,point(170,100)).

