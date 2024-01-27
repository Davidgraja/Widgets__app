import 'package:flutter/material.dart';

class NotificationListenerOneScreen extends StatelessWidget {
  const NotificationListenerOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _NotificationView(),
    );
  }
}

class _NotificationView extends StatefulWidget {
  const _NotificationView();

  @override
  State<_NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<_NotificationView> {
  String currentEventScroll = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

         Text(currentEventScroll , style: Theme.of(context).textTheme.titleMedium,),

        Expanded(
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              setState(() {
                switch(notification.runtimeType){
                    case ScrollStartNotification:
                     currentEventScroll = 'start scroll event';
                    break;

                    case UserScrollNotification:
                     currentEventScroll = 'User scroll event';
                    break;

                    case ScrollUpdateNotification:
                     currentEventScroll = 'Update scroll event';
                    break;

                    case ScrollEndNotification:
                     currentEventScroll = 'End scroll event';
                    break;
                }
              });

              return true;

            },
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ListTile(
                title: Text('$index'),
              ),
            ),
          ),
        )
      ],
    );
  }
}