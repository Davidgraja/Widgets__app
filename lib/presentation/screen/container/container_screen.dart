import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  static const name = 'container_screen';
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const _CustomSquare(null),
              const SizedBox(height: 20,),
              const _CustomSquare2(Colors.redAccent),
              const SizedBox(height: 20,),
              _CustomSquare3(Colors.greenAccent.shade200),
              const SizedBox(height: 20,),
              const _CustomSquare4(Colors.blueGrey),
              const SizedBox(height: 20,),
              const _CustomSquare5(Colors.black),
              const SizedBox(height: 20,),
              const _CustomSquare6(Colors.brown),
              const SizedBox(height: 20,),
              const _CustomSquare7(Colors.cyan),
              const SizedBox(height: 20,),
              const _CustomSquare8(Colors.deepOrange),
              const SizedBox(height: 30,),
              const _CustomSquare9(Colors.deepPurple),
              const SizedBox(height: 20,),
              const _CustomSquare10(Colors.lightGreen),
              const SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}



class _CustomSquare extends StatelessWidget {
  final Color color;
  const _CustomSquare(Color? myColor ) : color = myColor ?? Colors.blueAccent;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      color: color,
      child: const Text(
          'Container normal' , 
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
      ) ,
    );
  }

 }



 class _CustomSquare2 extends StatelessWidget {
    final Color color;
    const _CustomSquare2(Color? myColor) : color = myColor ?? Colors.blueAccent;
    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.center,
        color: color,
        // ignore: prefer_const_constructors
        constraints: BoxConstraints.expand(
          height: 200 , 
          width: 200
        ),
        child: const Text(
          'Container  BoxConstraints.expand' , 
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ) ,
      );
    }
  }


 class _CustomSquare3 extends StatelessWidget {
    final Color color;
    const _CustomSquare3(Color? myColor) : color = myColor ?? Colors.blueAccent;
    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.center,
        color: color,
        constraints: BoxConstraints.loose(const Size(200 , 200)),
        child: const Text(
          'Container  BoxConstraints.loose' , 
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ) ,
      );
    }
  }


  class _CustomSquare4 extends StatelessWidget {
    final Color color;
    const _CustomSquare4(Color? myColor) : color = myColor ?? Colors.blueAccent;
    @override
    Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.center,
        color: color,
        constraints: BoxConstraints.tight(const Size(200 , 200)),
        child: const Text(
          'Container  BoxConstraints.tight' , 
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ) ,
      );
    }
  }



class _CustomSquare5 extends StatelessWidget {
  final Color color;
  const _CustomSquare5(Color? myColor) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      constraints: const BoxConstraints.tightFor(height: 200 , width: 200),
      child: const Text(
        'Container  BoxConstraints.tightFor' , 
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ) ,
    );
  }
}


class _CustomSquare6 extends StatelessWidget {
  final Color color;
  const _CustomSquare6(Color? myColor) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      constraints: const BoxConstraints.tightForFinite(height: 200 , width: 200),
      child: const Text(
        'Container  BoxConstraints.tightForFinite' , 
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ) ,
    );
  }
}


class _CustomSquare7 extends StatelessWidget {
  final Color color;
  const _CustomSquare7(Color? myColor) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      constraints: const BoxConstraints(
        maxHeight: 200,
        maxWidth: 200
      ),
      child: const Text(
        'Container  BoxConstraints' , 
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ) ,
    );
  }
}

class _CustomSquare8 extends StatelessWidget {
  final Color color;
  const _CustomSquare8(Color? myColor) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      constraints: const BoxConstraints(
        maxHeight: 200,
        maxWidth: 200
      ),
      transform: Matrix4.rotationZ(0.1),
      child: const Text(
        'Container transform: Matrix4.rotationZ(0.1) ' , 
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ) ,
    );
  }
}

class _CustomSquare9  extends StatelessWidget {
  final Color color;
  const _CustomSquare9 (Color? myColor) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      constraints: const BoxConstraints(
        maxHeight: 200,
        maxWidth: 200
      ),
      transform: Matrix4.rotationX(0.1),
      child: const Text(
        'Container transform: Matrix4.rotationX(0)' , 
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ) ,
    );
  }
}

class _CustomSquare10  extends StatelessWidget {
  final Color color;
  const _CustomSquare10 (Color? myColor) : color = myColor ?? Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      constraints: const BoxConstraints(
        maxHeight: 200,
        maxWidth: 200
      ),
      transform: Matrix4.rotationY(0.5),
      child: const Text(
        'Container transform: Matrix4.rotationY(0.5) ' , 
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ) ,
    );
  }
}

