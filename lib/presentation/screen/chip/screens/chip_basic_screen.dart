import 'package:flutter/material.dart';

class ChipBasicScreen extends StatelessWidget {
  static const String name = 'chip_basic_screen';
  const ChipBasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              label: const Text('Julio paredes'),
              avatar: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a/ACg8ocJ0PStnl07cR_RqHYHIYJBK39MTxdQDNdZOWstu0BZ7=s288-c-no'),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),

            Chip(
              label: Text('Chip two'),
              side: BorderSide(color: Colors.blue, strokeAlign: 8, width: 1),
              color: MaterialStatePropertyAll(Colors.blueAccent),
              labelStyle: TextStyle(color: Colors.white),
              deleteIcon: Icon(Icons.delete),
              deleteIconColor: Colors.white,
              onDeleted: () => print('on delete event'),
            ),
            const Chip(
              label: Text('Chip three'),
              // backgroundColor: Colors.black,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              shadowColor: Colors.red,
              elevation: 4.0,
              surfaceTintColor: Colors.redAccent,
              

            ),
          ],
        ),
      ),
    );
  }
}
