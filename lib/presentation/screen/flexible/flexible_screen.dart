import 'package:flutter/material.dart';

///Este widget es interesante y util por que nos permite flexionar un widget hijo dentro de Row , Column y Flex
///Esto a su vez permite que se adapte al tamaño de su padre cuando este cambie ya que va distribuir estos widgets segun el tamaño del padre y la flexibilidad que le demos

class FlexibleScreen extends StatelessWidget {
  static const name = 'flexible_screen';
  const FlexibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget'),
        centerTitle: true,
      ),
      
      body: const SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [

              CustomText(value: 'Flexible aplicado a Row',),
              SizedBox(height: 10,),
              CustomRowSquare(),

              SizedBox(height: 10,),
              CustomText(value: 'Flexible aplicado a Column',),
              SizedBox(height: 10,),
              CustomColumnSquare()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomColumnSquare extends StatelessWidget {
  const CustomColumnSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Column(
        children: [
          Flexible(
              fit:  FlexFit.tight,
              child: CustomSquare(
                height: 120,
                child: Text('flex 1' , style: TextStyle(color: Colors.white),),
              )
          ),
          
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: CustomSquare(
              height: 120,
              color: Colors.red,
              child: Text('flex 3' , style: TextStyle(color: Colors.white),),
            )
          ),

          Flexible(
            fit: FlexFit.tight,
              flex: 2,
              child: CustomSquare(
                height: 120,
                color: Colors.amber,
                child: Text('flex 2' , style: TextStyle(color: Colors.white),),
              )
          )

        ],
      ),
    );
  }
}




class CustomRowSquare extends StatelessWidget {
  const CustomRowSquare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          child: CustomSquare(
            height: 100,
            child: Text('flex 1' , style: TextStyle(color: Colors.white),),
          ),
        ),

        Flexible(
          flex: 3,
            fit: FlexFit.tight,
            child: CustomSquare(
                height: 100,
                color: Colors.red,
                child: Text('flex 3', style: TextStyle(color: Colors.white)),
            )
        ),

        Flexible(
            fit: FlexFit.tight,
            child: CustomSquare(
              height: 100,
              color: Colors.amber,
              child: Text('flex 1' , style: TextStyle(color: Colors.white)),
            )
        ),

      ],
    );
  }
}

class CustomSquare extends StatelessWidget {
  final Color color;
  final double? width;
  final double? height;
  final Widget? child;
  const CustomSquare({
    super.key,
    this.color = Colors.blueAccent,
    this.width,
    this.height,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.center,
      color: color,
      height: height,
      width: width,
      child: child,
    );
  }
}


class CustomText extends StatelessWidget {
  final String value;
  const CustomText({super.key , this.value = ''});

  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme;

    return Text(value , style: textStyle.titleSmall,);
  }
}
