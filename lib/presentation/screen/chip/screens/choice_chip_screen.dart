import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatefulWidget {
  static const String name = 'choice_chip_screen';
  const ChoiceChipScreen({super.key});

  @override
  State<ChoiceChipScreen> createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  int? _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected chip : ${_value ?? 'No selected chip'} ',
                style: TextStyle(fontSize: 18),
              ),
              Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  3,
                  (index) => ChoiceChip(
                    selectedColor: Colors.amber.shade200,
                    label: Text('chip $index'),
                    selected: _value == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? index : null;
                      });
                    },
                  )
                ),
              )
            ]),
      ),
    );
  }
}
