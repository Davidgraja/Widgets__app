import 'package:flutter/material.dart';

class ActionChipScreen extends StatefulWidget {
  static const name = 'action_chip_name';
  const ActionChipScreen({super.key});

  @override
  State<ActionChipScreen> createState() => _ActionChipScreenState();
}

class _ActionChipScreenState extends State<ActionChipScreen> {
  bool like = false;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Wrap(
            spacing: 8.0,        
            children: [
              ActionChip(
                avatar: like ? const Icon(Icons.thumb_up_off_alt_rounded) : const Icon(Icons.thumb_up_alt_outlined),
                label: const Text('Like'),
                onPressed: () {
                  setState(() {
                    like = !like;
                  });
                },
              ),

              ActionChip(
                avatar: favorite ? const Icon(Icons.favorite_outlined) : const Icon(Icons.favorite_outline_outlined),
                label: const Text('Favorite'),
                onPressed: () {
                  setState(() {
                    favorite = !favorite;
                  });
                },
              )
            ],
      )),
    );
  }
}
