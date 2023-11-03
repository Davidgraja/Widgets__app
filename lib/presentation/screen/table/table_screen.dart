import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  static const name = 'table_screen';
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _TableExample(),
    );
  }
}

class _TableExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle, /// alineación de los elementos hijos en su eje vertical
        /// defaultColumnWidth: const FixedColumnWidth(50),   para definir el tamaño de las columnas
        columnWidths: const {
          1: FractionColumnWidth(0.5) // podemos definir que columnas van a tener un tamaño mas importante frente a las demas , como vemos por medio de un mapa  Map<int , TableColumnWidth>
        },
        border: TableBorder.all(
          borderRadius: BorderRadius.circular(10)
        ),
        children: const [
          TableRow(
            children: [
             SquareLarge(),
             SquareMedium(),
             SquareSmall()
            ]
          ),
    
          TableRow(
            children: [
             SquareMedium(),
             SquareSmall(),
             SquareLarge(),
            ]
          ),
    
          TableRow(
            children: [
              
            ///  Con TableCell podemos alinear aun elemento en especial dentro de la tabla , ignorando la alineación vetical que por defecto le demos a al Table
             TableCell( 
                verticalAlignment: TableCellVerticalAlignment.top,  
                child: SquareSmall()
              ),
             
             SquareMedium(),
             SquareLarge(),
            ]
          ),
        ],
      ),
    );
  }
}

class SquareLarge extends StatelessWidget {
  const SquareLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.blue
      ),
    );
  }
}


class SquareMedium extends StatelessWidget {
  const SquareMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 150,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.green
      ),
    );
  }
}


class SquareSmall extends StatelessWidget {
  const SquareSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
    );
  }
}