import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NotificationListenerTwoScreen extends StatefulWidget {
  const NotificationListenerTwoScreen({super.key});

  @override
  State<NotificationListenerTwoScreen> createState() => _NotificationListenerTwoScreenState();
}

class _NotificationListenerTwoScreenState extends State<NotificationListenerTwoScreen> {
  late ScrollController controller;
  bool showButton = true;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          setState(() {
            if(notification.direction == ScrollDirection.forward){
              showButton = false;
            }else if(notification.direction == ScrollDirection.reverse){
              showButton = true;
            }
          });
          return true;
        },
        child: ListView.builder(
          controller: controller,
          itemCount: 100,
          itemBuilder: (context, index) => ListTile(
            title: Text('$index'),
          ),
        ),
      ),
      floatingActionButton: (showButton) ? FloatingActionButton(
        onPressed: (){
          controller.jumpTo(controller.position.maxScrollExtent);
        },
        child:const  Icon(Icons.arrow_downward_outlined),
      )
      :
      null
    );
  }
}