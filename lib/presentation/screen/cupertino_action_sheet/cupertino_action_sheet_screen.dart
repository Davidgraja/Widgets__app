import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CupertinoActionSheetScreen extends StatelessWidget {
  const CupertinoActionSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _CupertinoActionview(),
    );
  }
}

class _CupertinoActionview extends StatelessWidget {
  const _CupertinoActionview();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(textStyle: const TextStyle( fontSize: 16 )),
         onPressed: () {

          showCupertinoModalPopup(
            context: context,
            builder:  (context) => CupertinoActionSheet(
              title: const Text('Do you agree ?'),
              message: const Text('Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.'),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () => context.pop(), 
                  // isDefaultAction: true,
                  child: const Text('Ok'),
                ),
                CupertinoActionSheetAction(
                  onPressed: () => context.pop(), 
                  isDestructiveAction: true,
                  child: const Text('Disagreement'),
                )
              ],

              cancelButton: CupertinoActionSheetAction(
                onPressed: () => context.pop(), 
                isDefaultAction: true,
                child: const Text('Cancel'),
              ),
            ),
          );

         },
        child: const Text('Click me!'),
      ),
    );
  }
}