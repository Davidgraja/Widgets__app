import 'package:flutter/material.dart';

// Esta es la forma nativa con la que cuenta Flutter para proveer información , es muy buena buena opcion ya que no tiene dependencias a terceros y es totalmente nativo pero tambien tiene sus limitantes , tenemos otras opciones para  proveer informacion , como provider , Riverpod , Bloc y muchos mas , claramente si queremos trabajar de esta forma es totalmente permitida

/* InheritedWidget y InheritedModel son casi iguales , la unica diferencia es que InheritedWidget al actualizarse cualquier propiedad de la clase hara que se redibujen los widgets que escuches sus propiedades ,
  caso opuesto ocurre con InheritedModel ya que solo redibujara a un widget si una propiedad en especifico se actualiza
 */

class MyColorsW extends InheritedWidget{

  const MyColorsW({required super.child , super.key ,  required this.color1, required  this.color2,});

  final Color color1;
  final Color color2;


  static MyColorsW? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<MyColorsW>();
  }

  @override
  bool updateShouldNotify(MyColorsW oldWidget) {
    
    return  color1 != oldWidget.color1 || color2 != oldWidget.color2;
     
  }

}