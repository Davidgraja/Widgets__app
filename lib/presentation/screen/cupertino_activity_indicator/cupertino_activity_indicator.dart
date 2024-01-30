import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorScreen extends StatelessWidget {
  const CupertinoActivityIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _CupertinoIndicatorView() ,
    );
  }
}

class _CupertinoIndicatorView extends StatelessWidget {
  const _CupertinoIndicatorView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CupertinoActivityIndicator(
            radius: 16,
          ),

          SizedBox(height: 20,),

          CupertinoActivityIndicator(
            radius: 20,
            color: Colors.green,
          ),

          SizedBox(height: 20,),

          CupertinoActivityIndicator(
            radius: 16,
            animating: false,
          ),

        ],
      ),
    );
  }
}

