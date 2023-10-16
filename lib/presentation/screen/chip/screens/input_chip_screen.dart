import 'package:flutter/material.dart';

class InputChipScreen extends StatefulWidget {
  static const String name = 'input_chip_screen';
  const InputChipScreen({super.key});

  @override
  State<InputChipScreen> createState() => _InputChipScreenState();
}

class _InputChipScreenState extends State<InputChipScreen> {
  // int inputs = 3;
  List<int> inputs = [1, 2, 3];
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                children: List<Widget>.generate(
                    inputs.length,
                    (int index) => InputChip(
                          label: Text('Person : ${inputs[index]}'),
                          selected: selectedIndex == index,
                          onSelected: (value) {
                            setState(() {
                              if (selectedIndex != index) selectedIndex = index;
                            });
                          },
                          onDeleted: () {
                            inputs.removeAt(index);
                            setState(() {});
                          },
                        ))),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    inputs = [1, 2, 3];
                    selectedIndex = null;
                  });
                },
                child: const Text('Reset'))
          ],
        ),
      ),
    );
  }
}
