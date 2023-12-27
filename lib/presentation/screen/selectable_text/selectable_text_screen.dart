import 'package:flutter/material.dart';

class SelectableTextScreen extends StatelessWidget {
  static const name = 'selectable_text_screen';
  const SelectableTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seleciona texto'),
      ),
      body: const _SelectableView(),
    );
  }
}


class _SelectableView extends StatefulWidget {
  const _SelectableView();

  @override
  State<_SelectableView> createState() => _SelectableViewState();
}

class _SelectableViewState extends State<_SelectableView> {

  final text = 'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.';

  String selectionText = '';

  // late FocusNode node = FocusNode();

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
             Text(selectionText , style: const TextStyle(fontSize: 18), textAlign: TextAlign.center,),
          
              const SizedBox(height: 40,),
          
              TextSelectionTheme(
                data: const TextSelectionThemeData(
                  selectionColor: Colors.green
                ),
                child: SelectableText(
                  text,
                  style: const TextStyle(
                    height: 1.4
                  ),
                  showCursor: true,
                  cursorColor: Colors.green,
                  cursorWidth: 4.0,
                  cursorRadius: const Radius.circular(2.0),
                  onSelectionChanged: (selection, cause) {
                    setState(() {
                      selectionText = text.substring(selection.start , selection.end);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
