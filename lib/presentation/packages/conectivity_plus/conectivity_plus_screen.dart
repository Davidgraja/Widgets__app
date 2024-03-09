import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConectivityPlusScreen extends StatelessWidget {
  const ConectivityPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const _ConectivityPlusView(),
    );
  }
}

class _ConectivityPlusView extends StatefulWidget {
  const _ConectivityPlusView();

  @override
  State<_ConectivityPlusView> createState() => _ConectivityPlusViewState();
}

class _ConectivityPlusViewState extends State<_ConectivityPlusView> {

  String conection = "";


  @override
  Widget build(BuildContext context) {
  
    Connectivity().onConnectivityChanged.listen((ConnectivityResult res) {
       setState(() {
         conection = res.toString();
       });
    });

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(conection),

          ElevatedButton(
            child: const  Text("get info"),
            onPressed:  () async {
              final ConnectivityResult connectivityResult = await Connectivity().checkConnectivity();
          
              switch (connectivityResult) {
                case ConnectivityResult.wifi:
                    setState(() {
                      conection = "haciendo uso de wifi";
                    });
                break;
                case ConnectivityResult.mobile:
                     setState(() {
                      conection = "haciendo uso de mobile";
                    });
                break;
                case ConnectivityResult.none:
                     setState(() {
                      conection = "No tienes conexión a internet";
                    });
                break;
                default:
                  throw Exception("Acción no implementado");
              }
          
            },
          ),
 
        ],
      ),
    );
  }
}