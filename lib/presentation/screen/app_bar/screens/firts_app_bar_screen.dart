import 'package:flutter/material.dart';

class FirstAppBarScreen extends StatelessWidget {

  static const String name = 'first_appbar';

  const FirstAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Frist AppBar'),
      elevation: 8,
      actions:  [
        IconButton(icon:const Icon(Icons.add_circle_outlined) , onPressed: (){}),
        const SizedBox(width: 10),
        IconButton(icon:const Icon(Icons.add_alert_outlined ), onPressed: (){}),
        const SizedBox(width: 10),
        IconButton(icon:const Icon(Icons.account_tree_outlined) , onPressed: (){}),
        const SizedBox(width: 20)
      ],

      flexibleSpace: Container(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Flexible Space'),
          SizedBox(height: 20,),
          Text(' AppBar basic')
        ],
        )
      ),

      automaticallyImplyLeading: true,
      centerTitle: false,
      
    );
  }
}