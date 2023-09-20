import 'package:flutter/material.dart';


enum Transportation {car, plane , boat , railway }

class UiControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Ui Controls'),
      ),

      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  
  bool isDeveloper = false;
  Transportation  selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch= false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(), // quitar efecto de rebote
      children: [
        SwitchListTile(
          title: const Text('Modo Desarrollador'),
          subtitle: const Text('Opciones avanzadas'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
              isDeveloper = !isDeveloper;
          }), 
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          // ignore: unnecessary_string_interpolations
          subtitle: Text('${selectedTransportation.name}'),
          children: [
              
            RadioListTile(
              title: const Text('En coche') ,
              subtitle: const Text('Viajar en coche'),
              secondary: const Icon(Icons.car_repair_rounded),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value)  => setState(() {
                selectedTransportation = Transportation.car;
              })
            ),

            RadioListTile(
              title: const Text('En bote') ,
              subtitle: const Text('Viajar en bote'),
              secondary: const Icon(Icons.directions_boat_filled_rounded),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value)  => setState(() {
                selectedTransportation = Transportation.boat;
              })
            ),

            RadioListTile(
              title: const Text('En avión') ,
              subtitle: const Text('Viajar en avión'),
              secondary: const Icon(Icons.airplanemode_active_rounded),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value)  => setState(() {
                selectedTransportation = Transportation.plane;
              })
            ),

            RadioListTile(
              title: const Text('En tren') ,
              subtitle: const Text('Viajar en tren'),
              secondary: const Icon(Icons.directions_railway),
              value: Transportation.railway,
              groupValue: selectedTransportation,
              onChanged: (value)  => setState(() {
                selectedTransportation = Transportation.railway;
              })
            ),
          ],
        ),

        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.platform,
          title:const Text('¿Incluir desayuno?'),
          value: wantsBreakfast,
          onChanged:(value) => setState(() {
              wantsBreakfast = !wantsBreakfast;
          }),
        ),

        CheckboxListTile(
          title: const Text('¿Incluir almuerzo?'),
          value: wantsLunch,
          onChanged:(value) => setState(() {
              wantsLunch = !wantsLunch;
          }),
        ),

        CheckboxListTile(
          title: const Text('¿Incluir cena?'),
          value: wantsDinner,
          onChanged:(value) => setState(() {
              wantsDinner = !wantsDinner;
          }),
        ),

      ],
    );
  }
}