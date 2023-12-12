import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  static const name = 'animated_icon_screen';
  const AnimatedIconScreen({super.key});

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>  with TickerProviderStateMixin{

  bool isPlay = false;

  late AnimationController controller;
   late AnimationController controllerTest;
  late Animation<double> animation;
  late Animation<double> animationTest;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))
    ..forward()
    ..repeat(reverse: true );

    controllerTest = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));

    // sin la animación es mucho mas rapido el cambio entre iconos
    animation = Tween(begin: 0.0 , end: 1.0).animate(controller);
    // animationTest= Tween(begin: 0.0 , end: 1.0).animate(controllerTest);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    controllerTest.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedIcon'),
        centerTitle: true,
        actions: [
            IconButton(
              onPressed: (){
                if(isPlay == false){
                  controllerTest.forward();
                  isPlay = true;
                }else{
                  controllerTest.reverse();
                  isPlay = false;
                }
              },
              icon: AnimatedIcon(
                progress: controllerTest,
                icon: AnimatedIcons.ellipsis_search, 
                size: 28,
                color: Colors.cyan,         
              ),
            )
        ],
      ),

      body: Center(
        child: Wrap(
          children: [
            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.ellipsis_search, 
              size: 40,
              color: Colors.lightBlueAccent,
            ), 

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.add_event, 
              size: 40,
              color: Colors.lightBlueAccent,
            ), 
            
            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.arrow_menu, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),
            
             AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.close_menu, 
              size: 40,
              color: Colors.lightBlueAccent,
            ), 

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.event_add, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.home_menu, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.list_view, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

             AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.menu_arrow, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.menu_close, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.menu_home, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.pause_play, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.play_pause, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.search_ellipsis, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),

            AnimatedIcon(
              progress: controller, 
              icon: AnimatedIcons.view_list, 
              size: 40,
              color: Colors.lightBlueAccent,
            ),
          ],
        )
      ),
    );
  }
}