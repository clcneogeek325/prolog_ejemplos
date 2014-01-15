programa1:-new(Ventana,picture('Ventaneishon de Practiqueishon', size(1000,8000))),

          % new(Fondo,label(etiqueta2,image('C:/prac/2.jpg'))),
           %send(Ventana,display,Fondo,point(0,0)),

           new(Logo2,label(etiqueta1,image('C:/prac/7.gif'))),
           send(Ventana,display,Logo2,point(900,0)),

           new(Logo1,label(etiqueta2,image('C:/prac/7.gif'))),
           send(Ventana,display,Logo1,point(30,0)),

                   %titulo de la factura
           new(Titulo,label(eti,'Factura "Don Chava"',font(arial,bold,45))),
           send(Ventana,display,Titulo,point(280,50)),
                    %etiqueta para la columna producto
           new(LblProducto,label(etiProducto,'Producto',font(arial,bold,14))),
           send(Ventana,display,LblProducto,point(200,180)),
                    %etiqueta para de columna Cantidad
           new(LblCantidad,label(etiCantidad,'Cantidad',font(arial,bold,14))),
           send(Ventana,display,LblCantidad,point(400,180)),
                    %etiqueta para de columna Precio Unitario
           new(LblPrecioUnit,label(etiPrecioUni,'Precio Unitario',font(arial,bold,14))),
           send(Ventana,display,LblPrecioUnit,point(550,180)),
            %etiqueta para de columna Cantidad
           new(LblTotal,label(etiTotal,'Total',font(arial,bold,14))),
           send(Ventana,display,LblTotal,point(800,180)),

                      %etiqueta para de Fila Producto 1
           new(LblProd1,label(etiProd1,'Prod1',font(arial,bold,14))),
           send(Ventana,display,LblProd1,point(30,220)),
           
           new(TxtNombre,text_item('')),
           send(Ventana,display,TxtNombre,point(100,220)),

           new(TxtProd1,text_item('')),
           send(Ventana,display,TxtProd1,point(300,220)),

           new(TxtPro1dPre,text_item('')),
           send(Ventana,display,TxtPro1dPre,point(500,220)),

           new(TxtPro1dTotal,text_item('')),
           send(Ventana,display,TxtPro1dTotal,point(700,220)),
           
                    %segunda fila del producto 2
           
           new(LblProd2,label(etiProd2,'Prod2',font(arial,bold,14))),
           send(Ventana,display,LblProd2,point(30,300)),
           
           new(TxtProd2,text_item('')),
           send(Ventana,display,TxtProd2,point(100,300)),

           new(TxtProd2Pre,text_item('')),
           send(Ventana,display,TxtProd2Pre,point(300,300)),

           new(TxtProd2PreUni,text_item('')),
           send(Ventana,display,TxtProd2PreUni,point(500,300)),

           new(TxtProd2Total,text_item('')),
           send(Ventana,display,TxtProd2Total,point(700,300)),



                    %tercera fila del producto 2

           new(LblProd3,label(etiProd3,'Prod3',font(arial,bold,14))),
           send(Ventana,display,LblProd3,point(30,400)),

           new(TxtProd3,text_item('')),
           send(Ventana,display,TxtProd3,point(100,400)),

           new(TxtProd3Pre,text_item('')),
           send(Ventana,display,TxtProd3Pre,point(300,400)),

           new(TxtProd3PreUni,text_item('')),
           send(Ventana,display,TxtProd3PreUni,point(500,400)),

           new(TxtProd3Total,text_item('')),
           send(Ventana,display,TxtProd3Total,point(700,400)),


           
           new(TxtSubTotal,text_item('Subtotal')),
           send(Ventana,display,TxtSubTotal,point(650,500)),

           new(TxtIva,text_item('Iva 16%')),
           send(Ventana,display,TxtIva,point(650,550)),

           new(TxtPagoTotal,text_item('Pago Total')),
           send(Ventana,display,TxtPagoTotal,point(650,600)),




           new(BtnCerrar,button('Cerrar',message(@prolog,cerrarVentana,Ventana))),
           send(Ventana,display,BtnCerrar,point(200,500)),

           new(BtnCalcu,button('Calcular')),
           send(Ventana,display,BtnCalcu,point(400,500)),


           send(Ventana,open,point(170,100)).

cerrarVentana(Ventana):-send(Ventana,destroy).




