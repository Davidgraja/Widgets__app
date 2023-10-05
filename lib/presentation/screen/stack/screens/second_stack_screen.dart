import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondStackScreen extends StatelessWidget {
  static const name = 'second_stack_screen';

  const SecondStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: OutlinedButton.icon(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_circle_left_outlined),
                label: const Text('Salir')),
          ),
          Center(
            child: Pulse(
              infinite: true,
              child: const FlutterLogo(
                size: 180,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
