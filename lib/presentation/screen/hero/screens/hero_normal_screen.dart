import 'package:flutter/material.dart';

class HeroNormalScreen extends StatelessWidget {
  static const String name = 'hero_normal_screen';
  const HeroNormalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Table(

        children: [
          TableRow(
              children: [
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
              ]
          ),

          TableRow(
              children: [
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
              ]
          ),

          TableRow(
              children: [
                GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const _SecondPage(),)),
                    child: const Hero(
                        tag: 'flutterHero',
                        child: FlutterLogo( size: 150)
                    )
                ),
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
              ]
          ),

          TableRow(
              children: [
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
                _CustomPlaceHolder(),
              ]
          )
        ],

      )  ,
    );
  }
}

class _CustomPlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackWidth: 150 ,
      fallbackHeight: 150,
    );
  }
}


class _SecondPage extends StatelessWidget {
  const _SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(),
        body: const Column(
            children:  [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Hero(
                    tag: 'flutterHero' ,
                    child: FlutterLogo()),
              ),

              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id pharetra arcu. Phasellus id nibh ac augue volutpat placerat nec ut tortor.',
                    style: TextStyle(fontSize: 30)
                ),
              )
            ]
        )
    );
  }
}


