import 'package:flutter/material.dart';

class ShaderMaskScreen extends StatelessWidget {
  const ShaderMaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _ShaderMaskView(
            shaderCallback: (Rect rect) => const RadialGradient(
              colors: [Colors.lightBlueAccent , Colors.tealAccent],
              tileMode: TileMode.mirror,
              radius: 1.0,
              center: Alignment.topCenter
            ).createShader(rect),
            childValue: 'ShaderMask',
         ) 
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _ShaderMaskView(
              shaderCallback: (Rect bounds) => const LinearGradient(
                colors: [ Colors.red , Colors.grey ],
                tileMode: TileMode.mirror,
                begin: Alignment.topCenter,
                end: Alignment.centerRight,
                stops: [0.2 , 1.0]
              ).createShader(bounds) ,
              childValue: 'ShaderMask widget with LinearGradient',
            ),
            
            const SizedBox(height: 20,),

            _ShaderMaskView(
              shaderCallback: (Rect bounds) => RadialGradient(
                colors: [ Colors.transparent , Colors.orange.shade300 ],
                center: Alignment.topLeft,
                radius: 1.0,
                tileMode: TileMode.mirror,
                focal: Alignment.bottomLeft
              ).createShader(bounds) ,
              childValue: 'ShaderMask widget with RadialGradient',
            ),

          ],
        ),
      ) ,
    );
  }
}


class _ShaderMaskView extends StatelessWidget {
  final  Shader Function(Rect) shaderCallback;
  final  String  childValue ;
  const _ShaderMaskView({ required this.shaderCallback , this.childValue = ''});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: shaderCallback,
        child: Text(
          childValue ,
          style: const TextStyle(fontSize: 24 , color: Colors.white), 
          textAlign: TextAlign.center,
        )
      ),
    );
  }
}