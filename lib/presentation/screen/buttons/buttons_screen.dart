import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: SingleChildScrollView(child: _ButtonsView()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(children: [
        const _CustomHeading(title: 'Elevated Buttons',),

        _ButtonsChildren(
          childrenButtons: [
            ElevatedButton( onPressed: () {}, child: const Text('Enabled')),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),

            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')
            ),  
          ],
        ),

       const _CustomHeading(title: 'Filled Buttons'),
       
        _ButtonsChildren(
          childrenButtons: [
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_outlined),
                label: const Text('Icon')
            ),

            FilledButton.tonal(
                onPressed: () {},
                child: const Text(
                  'Tonal',
                  style: TextStyle(color: Colors.white))
            ),

            FilledButton.tonalIcon(
                onPressed: () {},
                icon: Icon(Icons.yard_outlined, color: colors.primary),
                label: Text(
                  'Tonal Icon',
                  style: TextStyle(color: colors.primary))
            ),

            const _CustomHeading(title: 'Outlined Buttons'),

            _ButtonsChildren(
              childrenButtons: [
                OutlinedButton(onPressed: (){}, child: const Text('Outlined Button')),
                OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.access_time_filled) , label: const Text('Outlined icon')),
              ],
            ),

            const _CustomHeading(title: 'Text Buttons'),

            _ButtonsChildren(
              childrenButtons: [
                TextButton(onPressed: (){}, child: const Text('Text Button')),
                TextButton.icon(onPressed: (){}, icon: const Icon(Icons.accessibility_sharp), label: const Text('Text Icon')),
            ]),


            const _CustomHeading(title: 'Icons Buttons'),

            _ButtonsChildren(
              childrenButtons: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined)),

                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.account_circle_outlined),
                  color: Colors.white,
                  style: IconButton.styleFrom(
                    backgroundColor: colors.primary
                  )
                ),

                IconButton.filled(onPressed: (){}, icon: const Icon(Icons.zoom_in_map_rounded)),
                IconButton.filledTonal(
                  onPressed: (){},
                  icon: const Icon(Icons.account_tree_sharp),
                  color: colors.primary
                ),
                
                IconButton.outlined(
                  onPressed: (){},
                  icon: const Icon(Icons.workspaces_outlined),
                  color:Colors.white,
                  style: IconButton.styleFrom(
                    backgroundColor: colors.inversePrimary
                  )
                )
              ]
            ),

            const _CustomHeading(title: 'Custom Button'),

            const CustomButton(), 
            const CustomButton2(),      
            const CustomButton3(),    
          ],
        ),
      ]),
    );
  }
}

class _CustomHeading extends StatelessWidget {
  final String title;

  const _CustomHeading({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            '$title : ',
            style: const TextStyle(fontSize: 16),
          )),
    );
  }
}

class _ButtonsChildren extends StatelessWidget {
  final List<Widget> childrenButtons;

  const _ButtonsChildren({required this.childrenButtons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Wrap(spacing: 10, children: childrenButtons),
      ),
    );
  }
}



class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent , colors.secondary]
            )
          ),
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
              child: Text('Button 1' , style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
      ),
    ) ;
      
  }
} 



class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      elevation: 8,
      surfaceTintColor: colors.primary ,
      borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: (){},
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
          child: Text('Button 2'),
        )
      ),
    );
  }
}


class CustomButton3 extends StatelessWidget {
  const CustomButton3({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(16) ),
      child: Material(
        color: Colors.black,
        child:  DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.transparent , Colors.blueAccent.shade400] , stops: const [0.0, 1.0])
          ),
          child: InkWell(
            onTap: (){},
            overlayColor:  const MaterialStatePropertyAll(Colors.redAccent),
            child: const Padding(
              padding:EdgeInsets.all(12),
              child: Text('Button 3', style: TextStyle(color: Colors.white),) ,
            ),
          ),
        ),
      )
    );
  }
}