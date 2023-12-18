import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatelessWidget {
  static const name = 'animated_switcher_screen';
  const AnimatedSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _CustomView() ,
    );
  }
}




class _CustomView extends StatefulWidget {

  const _CustomView({super.key});

  @override
  State<_CustomView> createState() => __CustomViewState();
}

class __CustomViewState extends State<_CustomView> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    final textStyle  = Theme.of(context).textTheme;

    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const  Duration(milliseconds: 400),
            transitionBuilder: (Widget child, Animation<double> animation) {
              /// por defecto la transición es FadeTransition

              return ScaleTransition(scale: animation, child: child);
              // return RotationTransition(turns: animation , child: child,);
            },
            child: Text(
              key:ValueKey(_count) ,
              '$_count',
              style: textStyle.headlineLarge,
            ),
          ),

          ElevatedButton(
              onPressed: (){
                setState(() {
                  _count += 1;
                });
              },
              child: Text('add')
          )

        ],
      ),
    );
  }
}