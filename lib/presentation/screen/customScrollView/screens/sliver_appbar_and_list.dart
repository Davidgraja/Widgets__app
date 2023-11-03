import 'package:flutter/material.dart';

class SliverAppbarAndList extends StatelessWidget {
  static const name = 'sliver_appbar_and_list';
  const SliverAppbarAndList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            foregroundColor: Colors.white,
            clipBehavior: Clip.hardEdge,

            //? deja fijo el appbar durante todo el scroll
            pinned: true,

            //? genera un efecto flotante al realizar el scroll , funciona muy bien sin el flexibleSpace
            floating:  true,

            /* 
            Si [snap] es verdadero, entonces genera un desplazamiento que expone la barra flotante de la aplicación,
            activará una animación que desliza toda la barra de la aplicación a la vista.
             */
            // snap: false,
            elevation: 4,
            stretch: true,
            actions: [
              TextButton(onPressed: () {}, child: const Text('Actions' , style: TextStyle(color: Colors.white),)),
            ],
            expandedHeight: 300  ,
            flexibleSpace:   SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                  'https://img.freepik.com/foto-gratis/fondo-pantalla-abstracto-nebulosa-ultra-detallado-4_1562-749.jpg?size=626&ext=jpg&ga=GA1.2.386372595.1697587200&semt=sph',
                  fit: BoxFit.cover,
                ),
            ),

            /// podemos hacer uso del widget FlexibleSpaceBar , el cual nos dara un comportamiento particulas dentro del flexibleSpace
            /* 
             FlexibleSpaceBar(
                background: Image.network(
                'https://img.freepik.com/foto-gratis/fondo-pantalla-abstracto-nebulosa-ultra-detallado-4_1562-749.jpg?size=626&ext=jpg&ga=GA1.2.386372595.1697587200&semt=sph',
                fit: BoxFit.cover,
              ) ,
            ) */  
          
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                margin: const EdgeInsets.only(top: 5 , left: 10 ,right: 10),
                width: double.infinity,
                height: 100,
                child: Center(
                    child: Text(
                  'SliverList : $index',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
              childCount: 10,
            ),
          ),
          
          SliverFixedExtentList(
            itemExtent: 100.0,           
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple.shade100
                ),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Text('SliverFixedExtentList : $index'),
              ),
            ), 
          ),
        ],
      ),
    );
  }
}
