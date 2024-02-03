import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationPackageScreen extends StatelessWidget {
  const LocationPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _LocationView(),
    );
  }
}


class _LocationView extends StatefulWidget {
  const _LocationView();

  @override
  State<_LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<_LocationView> {
  Location location = Location();

  double? altitude = 0.0;
  double? accuracy = 0.0;
  double? latitude = 0.0;
  double? longitude = 0.0;
  double? speedAccuracy = 0.0;
  double? speed = 0.0;
  double? time = 0.0;

  Future<LocationData?> requestPermissions() async {
    bool serviceEnable;
    LocationData locationData;
    PermissionStatus permissionStatus;


    serviceEnable = await location.serviceEnabled();
    if(!serviceEnable){
      serviceEnable = await location.requestService();
      if(!serviceEnable) return null;
    }


    permissionStatus = await location.hasPermission();
    if(permissionStatus == PermissionStatus.denied){
      permissionStatus = await location.requestPermission();

      if(permissionStatus != PermissionStatus.granted) return null ;
    }

    locationData = await location.getLocation();

    return locationData;

  }


  

  @override
  Widget build(BuildContext context) {

    location.onLocationChanged.listen((value) {
      setState(() {
        altitude = value.altitude;
        accuracy = value.accuracy;
        altitude = value.altitude;
        latitude = value.latitude;
        longitude = value.longitude;
        speedAccuracy = value.speedAccuracy;
        speed = value.speed;
        time = value.time;
      });

    },);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('altitude : ${altitude ?? 'cargando'  } '),
          Text('accuracy : ${accuracy ?? 'cargando'}'),
          Text('altitude : ${altitude ?? 'cargando' }'),
          Text('latitude : ${latitude ?? 'cargando'} '),
          Text('longitude : ${longitude ?? 'cargando' } '),
          Text('speedAccuracy : ${speedAccuracy ?? 'cargando' } '),
          Text('speed : ${speed ?? 'cargando' } '),
          Text('time : ${time ?? 'cargando' } '),

          TextButton(
            onPressed: () {
              requestPermissions().then((value){
                setState(() {
                  altitude = value?.altitude;
                  accuracy = value?.accuracy;
                  altitude = value?.altitude;
                  latitude = value?.latitude;
                  longitude = value?.longitude;
                  speedAccuracy = value?.speedAccuracy;
                  speed = value?.speed;
                  time = value?.time;
                });
              });
            },
            child: Text('Get location info'),
          ), 



        ],
      ),
    );
  }
}
