import 'package:flutter/material.dart';

class IndexedStackScreen extends StatefulWidget {
  static const name = 'indexed_stack_screen';
  const IndexedStackScreen({super.key});

  @override
  State<IndexedStackScreen> createState() => _IndexedStackScreenState();
}

class _IndexedStackScreenState extends State<IndexedStackScreen> {
  int indexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: indexValue,
        children: const [
          _IndexedView(Colors.blueAccent ,1),
          _IndexedView(Colors.black54 , 2 ),
          _IndexedView(Colors.redAccent , 3),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexValue,
        onTap: (value){
          setState(() {  
            indexValue = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Text('1', style: TextStyle(fontSize: 18),) , label: 'page one') ,
          BottomNavigationBarItem(icon:Text('2', style: TextStyle(fontSize: 18),), label: 'Page two'),
          BottomNavigationBarItem(icon: Text('3', style: TextStyle(fontSize: 18),), label: 'Page Three')
        ]
      ),
    );
  }
}

class _IndexedView extends StatefulWidget {
  final int page;
  final Color color;
  const _IndexedView(this.color , this.page);

  @override
  State<_IndexedView> createState() => _IndexedViewState();
}

class _IndexedViewState extends State<_IndexedView> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: widget.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page : ${widget.page}' ,  style: const TextStyle(color: Colors.white , fontSize: 20)),
            const SizedBox(height: 10,),
            Text('Count : $count' , style: const TextStyle(color: Colors.white , fontSize: 18),),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        heroTag: UniqueKey(),
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}