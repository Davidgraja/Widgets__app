import 'package:flutter/material.dart';

TextTheme getTextTheme (BuildContext context){
  final textStyle = Theme.of(context).textTheme;
  return textStyle;
}


class RichTextScreen extends StatelessWidget {
  static const name = 'rich_text_screen';
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = getTextTheme(context);
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style:  textStyle.titleLarge,
            children: [
              TextSpan(text: 'RichText \t' , style: textStyle.titleLarge?.copyWith(fontWeight: FontWeight.bold )),
              TextSpan(text: 'Widget' , style: textStyle.bodyLarge?.copyWith(color: Colors.black45 , fontStyle: FontStyle.italic)),
            ]
          ),
        ),
      ),
      body: _RichView(),
    );
  }
}


class _RichView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = getTextTheme(context);
    return  Container(
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
              text: TextSpan(
                style: textStyle.titleLarge,
                children: [
                  TextSpan(text: 'There is no one who loves pain itself  \t' , style: textStyle.bodyMedium ),
                  TextSpan(text: 'who seeks after it and wants to have it \t' , style: textStyle.headlineSmall),
                  TextSpan(text: 'simply because it is pain..' , style: textStyle.labelLarge?.copyWith(color: Colors.blue) ),
                ]
              )
          ),
        ],
      ),
    );
  }
}