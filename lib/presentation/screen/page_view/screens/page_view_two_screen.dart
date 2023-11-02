
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageViewTwoScreen extends StatefulWidget {
  static const String name = 'page_view_two_screen';

  final List<Widget> children;

  const PageViewTwoScreen({super.key , required this.children});

  @override
  State<PageViewTwoScreen> createState() => _PageViewTwoScreenState();
}

class _PageViewTwoScreenState extends State<PageViewTwoScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
           SizedBox(
            width: double.infinity,
            height: 300 ,
            child:  PageView.builder(
                dragStartBehavior: DragStartBehavior.start,
                padEnds: true, /// habilitar o deshabilitar relleno al inicio y final del page view
                pageSnapping: true, /// habilitar o deshabilitar el comportamiento de desplazamiento
                scrollDirection: Axis.horizontal, /// Dirección del scroll
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: PageController(
                    initialPage: 0,
                    viewportFraction: 0.7
                ),
                itemCount: widget.children.length ,
                itemBuilder: (context, index){
                  final card = widget.children[index];

                  if(index != currentIndex){
                    return AnimatedOpacity(
                      opacity: 0.7,
                      duration: const Duration(milliseconds: 500),
                      child: card,
                    );
                  }

                  return  card ;
                },
            ),
          ),

          const SizedBox(height: 20,),

          Wrap(
            runSpacing: 5.0,
            children: List.generate( widget.children.length, (index) =>  Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 2),
              child: IndexIndicator( color: (index == currentIndex) ? Colors.blue :  Colors.black26,),
            ))
          )
        ],
      ),
    );
  }
}


class IndexIndicator extends StatelessWidget {
  final Color? color;
  const IndexIndicator({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 10,
        height: 10,
        color: color,
      ),
    );
  }
}
