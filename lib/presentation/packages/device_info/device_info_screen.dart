
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoPackage extends StatelessWidget {
  const DeviceInfoPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(child: _DeviceInfoView()),
    );

  }
}

class _DeviceInfoView extends StatefulWidget {
  const _DeviceInfoView();

  @override
  State<_DeviceInfoView> createState() => _DeviceInfoViewState();
}

class _DeviceInfoViewState extends State<_DeviceInfoView> {
  final deviceInfo  = DeviceInfoPlugin();
  String showInfo = '';

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
      
          TextButton(
            onPressed: () async {
                if(Platform.isAndroid){
                  final androidInfo = await deviceInfo.androidInfo; 
                  setState(() {
                    showInfo = androidInfo.toString();
                  });
                }

                if(Platform.isIOS){
                  final iosInfo = await deviceInfo.iosInfo;
                  setState(() {
                    showInfo = iosInfo.toString();
                  });

                }

            },
             child: const Text('Get info')
          ),


          Text(showInfo)
      
        ],
      ),
    );
  }
}