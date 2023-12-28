import 'package:flutter/material.dart';


// Algo a tener en cuenta es de que se tenemos dos vistas y ambas tiene un  FloatingActionButton , el sistema operativo realizara un efecto o transición que se ve muy bien 

class FloatingActionButtonScreen extends StatelessWidget {
  static const String  name = 'floating_action_button_screen'; 
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _CustomFloatingButton(),
      bottomNavigationBar:  _CustomButtonNavigationBar(),

    );
  }
}



class FloatingActionButtonScreenSecond extends StatelessWidget {
  const FloatingActionButtonScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: _CustomFloatingButton(),
      bottomNavigationBar:  _CustomBottomAppBar(),

    );
  }
}



class _CustomButtonNavigationBar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(label: 'Buscar' , icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: 'Ajustes' , icon: Icon(Icons.settings))
      ]
    );
  }
}

/* podemos poner un contenedor como relleno en el bottonNavigationBar */
class _CustomBottomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.blue,
    );
  }
}

class _CustomFloatingButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const  CircleBorder(
        side: BorderSide(color: Colors.white , width: 2.0) //? efecto de incrustración del button dentro del navigation bar
      ),
      highlightElevation: 0,
      elevation: 0,
      onPressed: (){
        Navigator.push(context , MaterialPageRoute(builder: (context)=> const FloatingActionButtonScreenSecond() ));
      }, 
      child: const Icon(Icons.add_circle_sharp),
    );
  }
}