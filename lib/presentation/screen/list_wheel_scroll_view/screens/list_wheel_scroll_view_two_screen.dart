import 'package:flutter/material.dart';

class ListWheelScrollViewTwoScreen extends StatelessWidget {
  const ListWheelScrollViewTwoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ListWheelScrollView(),
    );
  }
}

class _ListWheelScrollView extends StatefulWidget {
  const _ListWheelScrollView();

  @override
  State<_ListWheelScrollView> createState() => _ListWheelScrollViewState();
}

class _ListWheelScrollViewState extends State<_ListWheelScrollView> {
  int selectedIndex = 0 ;
  
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: ListWheelScrollView(
        onSelectedItemChanged: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        itemExtent: 54,
        children: List.generate(20, (index) => RotatedBox(
            quarterTurns: 1,
            child: AnimatedContainer(
              alignment: Alignment.center,
              width: index == selectedIndex ? 60 : 50,
              height: index == selectedIndex ? 60 : 50,
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color:index == selectedIndex ? Colors.blue : Colors.greenAccent,
                shape:  BoxShape.circle
              ),
              child: Text('$index'),
            ),
          )
        )
      ),
    );
  }
}