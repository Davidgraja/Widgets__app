import 'package:flutter/material.dart';

class ScrollViewSlivers extends StatelessWidget {

  static const name = 'scroll_view_Slivers';
  
  const ScrollViewSlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            backgroundColor: Colors.black87,
            foregroundColor: Colors.white,
            clipBehavior: Clip.hardEdge,

            //? deja fijo el appbar durante todo el scroll
            // pinned: true,  

            //? genera un efecto flotante al realizar el scroll , funciona muy bien sin el flexibleSpace
            floating: true,
            
            /* 
            Si [snap] es verdadero, entonces genera un desplazamiento que expone la barra flotante de la aplicación,
            activará una animación que desliza toda la barra de la aplicación a la vista.
             */
            snap: true,
            elevation: 4,
            stretch: true,    
            actions: [
              TextButton(onPressed: (){}, child: Text('Actions')),
            ],
            /* expandedHeight:500 ,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar - FlexibleSpaceBar'),
              // centerTitle: true,
              titlePadding: EdgeInsets.all(10),
              background: FlutterLogo(),

            )  */
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container( 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent
                ),
                margin: const EdgeInsets.all(10),
                width:double.infinity , 
                height: 100,
                child: Center(child: Text('Index : $index' , style: const TextStyle(fontSize: 16, color: Colors.white),)),
              ), 
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
