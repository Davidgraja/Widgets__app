import 'package:flutter/material.dart';

enum Exercises { walking, running, cycling, hiking }

class FilterChipScreen extends StatefulWidget {
  static const String name = 'filter_chip_screen';
  const FilterChipScreen({super.key});

  @override
  State<FilterChipScreen> createState() => _FilterChipScreenState();
}

class _FilterChipScreenState extends State<FilterChipScreen> {
  Set<Exercises> selectedExercises = {};

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose an exercise' , style: styles.titleLarge,),

            const SizedBox(height: 5.0,),

            Wrap(
                spacing: 8.0,
                children: Exercises.values
                    .map((e) => FilterChip(
                          label: Text(e.name),
                          selected: selectedExercises.contains(e),
                          onSelected: (bool selected) {
                            if (selected) {
                              selectedExercises.add(e);
                            } else {
                              selectedExercises.remove(e);
                            }

                            setState(() {});
                          },
                        ))
                    .toList()),

            const SizedBox(height: 5.0,),

            Text(
              'Looking for : ${selectedExercises.map((e) => e.name).join(' , ')}',
              style: styles.bodyMedium,
            
            )
          ],
        ),
      ),
    );
  }
}
