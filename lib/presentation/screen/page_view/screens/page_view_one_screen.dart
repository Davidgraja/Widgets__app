import 'package:flutter/material.dart';
import 'package:widget_app/presentation/shared/page_view/page_view_shared.dart';

class PageViewOneScreen extends StatelessWidget {
  static const String name = 'page_view_one_screen';
  const PageViewOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: const [
          CustomPageView(color: Colors.red , child: CustomText(text: 'Page view one' ,), ),
          CustomPageView(color: Colors.blue , child: CustomText(text: 'Page view two' ,),),
          CustomPageView(color: Colors.greenAccent , child: CustomText(text: 'Page view three' ,)),
        ],
      ),
    );
  }
}

