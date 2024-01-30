import 'package:flutter/material.dart';

class IgnorePointerScreen extends StatelessWidget {
  const IgnorePointerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IgnorePointer'),
      ),
      body:  _IgnorePointerView(),
    );
  }
}

class _IgnorePointerView extends StatefulWidget {
  @override
  State<_IgnorePointerView> createState() => _IgnorePointerViewState();
}

class _IgnorePointerViewState extends State<_IgnorePointerView> {
  bool ignored = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextButton.icon(
            onPressed: (){
              setState(() {
                ignored = !ignored;
              });
            },
            icon: Icon( ignored ?  Icons.radio_button_off_outlined : Icons.not_interested_outlined) ,
            label: Text( ignored ? 'unlock' : 'block'),
            style: TextButton.styleFrom(
              foregroundColor: ignored ? Colors.green : Colors.red
            ),
          ),

          IgnorePointer(
            ignoring: ignored,
            child: ElevatedButton(onPressed: (){}, child: Text( ignored ? 'Button block' : 'Button unblock'))
          ),

        ],
      ),
    );
  }
}

