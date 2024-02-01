import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('url_launcher package'),
      ),
      body: const _UrlLauncherView(),
    );
  }
}


class _UrlLauncherView extends StatelessWidget {
  const _UrlLauncherView();

  @override
  Widget build(BuildContext context) {


  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }


    Future<void> exeLaunchUri( Uri uri) async {
      if( await canLaunchUrl(uri)){
          await launchUrl(uri);
      }
    }

    final Uri url = Uri.parse('https://flutter.dev/');
    final Uri urlTel = Uri.parse('tel:603391921');

    /// sms urls
    final Uri _urlSms = Uri.parse('sms:603391921');

    // sms with message
    final smsLaunchUrl = Uri(
      scheme: 'sms',
      path: '603391921',
      queryParameters: <String , String>{
        'body' : Uri.decodeComponent('this is a message by Ferxxo')
      }
    );

    /// emails

     final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'davidgraja09@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Flutter url luancher!',
        'body' : 'this a message to Ferxxo'
      }),
    );

     final emailLaunchUrl =  Uri.parse('mailto:davidgraja09@gmail.com?subject=Flutter url luancher&body=Hi, Flutter developer ');


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextButton(
              onPressed: () async {
                await exeLaunchUri(url);
              },
              child: const  Text('Navigate to Flutter dev')
          ),


          TextButton(
              onPressed: () async {
                await exeLaunchUri(urlTel);
              },
              child: const  Text('call to Ferxxo')
          ),


           TextButton(
              onPressed: () async {
                await exeLaunchUri(smsLaunchUrl);
              },
              child: const  Text('Message to Ferxxo')
          ),

           TextButton(
              onPressed: () async {
  
                if(!await launchUrl(emailLaunchUri)){
                  print('app no encontrada');
                }

              },
              child: const  Text('Email to Ferxxo')
          ),


        ],
      ),
    );
  }
}
