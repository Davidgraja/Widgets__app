import 'package:flutter/material.dart';

class CheckboxListTileScreen extends StatelessWidget {
  const CheckboxListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _CheckboxListTileView(),
    );
  }
}

class _CheckboxListTileView extends StatefulWidget {
  const _CheckboxListTileView();

  @override
  State<_CheckboxListTileView> createState() => _CheckboxListTileViewState();
}

class _CheckboxListTileViewState extends State<_CheckboxListTileView> {

  bool firtsValue = false;
  bool secondValue = false;
  bool thirdValue = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CheckboxListTile(
              title: Text('First option'),
              value: firtsValue,
              secondary: Icon(Icons.keyboard_option_key),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('Description'),
              onChanged: (value) {
                setState(() {
                  firtsValue = !firtsValue;
                });
              },
          ),

          CheckboxListTile(
            title: Text('Second option'),
            value: secondValue,
            secondary: Icon(Icons.account_circle),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: Text('Description'),
            activeColor: Colors.green,
            checkColor: Colors.black,
            dense: true,
            onChanged: (value) {
              setState(() {
                secondValue = !secondValue;
              });
            },
          ),


          CheckboxListTile(
            title: Text('third option'),
            value: thirdValue,
            secondary: Icon(Icons.accessibility_sharp),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: Text('Description'),
            activeColor: Colors.red.shade400,
            checkColor: Colors.white,
            checkboxShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            selected: thirdValue,
            dense: true,
            onChanged: (value) {
              setState(() {
                thirdValue = !thirdValue;
              });
            },

            // contentPadding: EdgeInsets.symmetric(horizontal: 16),
            // isError: true, // por si queremos mostrarle al usuario que es obligatorio marcar el checkbox
            // enabled: false, // habilitar o desabilitar el checkbox
            // tileColor: Colors.black54,
          )

        ],
      ),
    );
  }
}
