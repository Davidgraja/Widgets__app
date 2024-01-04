import 'package:flutter/material.dart';

class ToggleButtonsScreen extends StatelessWidget {
  const ToggleButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ToggleButtonsView(),
    );
  }
}

class _ToggleButtonsView extends StatefulWidget {
  const _ToggleButtonsView();

  @override
  State<_ToggleButtonsView> createState() => _ToggleButtonsViewState();
}

class _ToggleButtonsViewState extends State<_ToggleButtonsView> {
  
  List<String> clothingSize = ['XS' , 'S' , 'M' , 'L' , 'XL'];
  List<String> fruit = ['Banana' , 'Melon' ,'pineapple' , 'strawberry' ];

  late List<bool> isSelectedSize;
  late List<bool> isSelectedFruit;


  @override
  void initState() {

    isSelectedSize = List.generate(clothingSize.length, (index) => false,);
    isSelectedFruit = List.generate(fruit.length, (index) => false,);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text('ToggleButtons'),
          ToggleButtons(
            onPressed: (index) {
              setState(() {
                isSelectedSize[index] = !isSelectedSize[index];
              });
            },
            isSelected: isSelectedSize,
            splashColor: Colors.indigo.shade400,
            children: clothingSize.map((e) => Text(e)).toList(),
            // highlightColor: Colors.green,
          ),

          const SizedBox(height: 20,),


          const Text('ToggleButtons - Single selection'),
          ToggleButtons(
            onPressed: (index) {
              setState(() {
                for (var i = 0; i < isSelectedFruit.length; i++) {
                  isSelectedFruit[i] = (i == index);
                }
              });
            },
            isSelected: isSelectedFruit,
            constraints: const BoxConstraints(
              minHeight: 40.0,
              minWidth: 80.0
            ),
            renderBorder: true,
            selectedBorderColor: Colors.red.shade700,
            fillColor: Colors.red.shade200,
            selectedColor: Colors.white,
            color: Colors.red.shade400,
            borderRadius: BorderRadius.circular(20),
            children: fruit.map((e) => Text(e)).toList(),
          ),

        ],
      ),
    );
  }
}