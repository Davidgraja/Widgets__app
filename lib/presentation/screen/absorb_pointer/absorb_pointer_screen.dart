import 'package:flutter/material.dart';


/// Por defecto AbsorbPointer  en su porpiedad  absorbing  va a ser  true , cualquier evento va a dejar de funcionar haciendo uso de este widget , scroll , clicks , etc . es un buen widget cuando
/// queremos que el usuario no ejecute alguna tarea en determinado tiempo y esto lo podemos lograr desabilitando los eventos por medio de este widget
/// 
/// Hay que tener en cuenta de que este widget es muy util tanto para un widget como para un arbol completo de widgets , por lo que hay que tener en cuenta de donde usando y aplicarlo , ya que todo widget
/// que  haga parte de su arbol se vera afectado




class AbsorbPointerScreen extends StatefulWidget {
  static const name = 'absorb_pointer_screen';
  const AbsorbPointerScreen({super.key});

  @override
  State<AbsorbPointerScreen> createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  
  bool isAbsorbing = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AbsorbPointer(
          absorbing: isAbsorbing ,
          child: _BodyScreen(),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            isAbsorbing = !isAbsorbing;
          });
        },
        child: Icon( 
          (isAbsorbing) ? Icons.lock_outline_rounded : Icons.lock_open 
        ),
      ),
    );
  }
}

class _BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          const _CustomOutlineButtom(),
          
          const Row(
            children: [
            Expanded( flex: 2, child: _CustomOutlineButtom()),
            Expanded(child: _CustomOutlineButtom()),
            ],
          ),
          
          const Row(
            children: [
            Expanded(child: _CustomOutlineButtom( height: 180,)),
            Expanded( flex: 2, child: _CustomOutlineButtom( height: 180,)),
            ],
          ),
    
    
          Container(
            margin: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(itemBuilder: (context, index) => ListTile(title: Text('${index + 1 }'),),),
          )
          
        ]
      ),
    );
  }
}

class _CustomOutlineButtom extends StatelessWidget {
  final double height;
  const _CustomOutlineButtom({ this.height = 150 });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: height,
      child: OutlinedButton(
        onPressed: (){}, 
        style: OutlinedButton.styleFrom(
          shape: ContinuousRectangleBorder( borderRadius: BorderRadius.circular(10))
        ),                
        child: const Text('Button')
      )
    );
  }
}