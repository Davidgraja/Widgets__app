import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextKitScreen extends StatelessWidget {
  const AnimatedTextKitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          totalRepeatCount: 4,
          animatedTexts: [
             TypewriterAnimatedText("AnimatedTextKit"),
          ],
        ),
      ),
      body: const _AnimatedTextView(),
    );
  }
}

class _AnimatedTextView extends StatelessWidget {
  const _AnimatedTextView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [

          _AnimationOne(),

          SizedBox(height: 20.0,),

          _ExampleTwo(),

          SizedBox(height: 20.0,),

          _ExampleThree()

        ],
      ),
    );
  }
}


class _AnimationOne extends StatelessWidget {
  const _AnimationOne();

  @override
  Widget build(BuildContext context) {
    return Container(

      constraints: BoxConstraints(
        maxHeight: 150
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          const Text(
            'Be',
            style: TextStyle(fontSize: 43.0),
          ),
          const SizedBox(width: 20.0, height: 100.0),
          DefaultTextStyle(
            style: const TextStyle(
              color: Colors.green,
              fontSize: 40.0,
              fontFamily: 'Horizon',
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                RotateAnimatedText('AWESOME'),
                RotateAnimatedText('OPTIMISTIC'),
                RotateAnimatedText('DIFFERENT'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ],
      )
          );
  }
}

class _ExampleTwo extends StatelessWidget {
  const _ExampleTwo();

  @override
  Widget build(BuildContext context) {
   return Container(
    constraints: const BoxConstraints(
      minHeight: 150
    ),
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText('do IT!'),
            FadeAnimatedText('do it RIGHT!!'),
            FadeAnimatedText('do it RIGHT NOW!!!'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}

class _ExampleThree extends StatelessWidget {
  const _ExampleThree();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30.0,
          fontFamily: 'Agne',
        ),
        child: AnimatedTextKit(

          pause: Duration(seconds: 2),
          repeatForever: true,
          animatedTexts: [
            TypewriterAnimatedText('Discipline is the best tool'),
            TypewriterAnimatedText('Design first, then code'),
            TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
            TypewriterAnimatedText('Do not test bugs out, design them out'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}