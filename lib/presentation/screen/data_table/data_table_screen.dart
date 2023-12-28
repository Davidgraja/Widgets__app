import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screen/data_table/data/custom_data.dart';

class DataTableScreen extends StatelessWidget {
  static const name = 'data_table_screen';
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       body: const _DataTableView(),
    );
  }
}

class _DataTableView extends StatefulWidget {
  const _DataTableView();

  @override
  State<_DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<_DataTableView> {

  late List<bool> rowSelected ;

  List<Map<String, String>> data = [ ...dataTableUsers];
  bool sortAscending = false;
  int sortColumnIndex = 0;

  DataCell buildDataCell(int index , String property) => DataCell(Text(data[index][property]!));

  void onSortDataColumn( int index , bool ascending  , String field){
    setState(() {
      sortColumnIndex = index;
      sortAscending = ascending;
      if(ascending){
        data.sort((a, b) => a[field]!.compareTo( b[field]!),);
      }
      data = data.reversed.toList();
    });
  }

  @override
  void initState() {
    rowSelected = List.generate(data.length, (index) =>  false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        sortColumnIndex: sortColumnIndex,
        sortAscending: sortAscending,
        checkboxHorizontalMargin: 30,
        dividerThickness: 0.5,

        columns: [
         
          _BuildDataColumn(labelValue: 'First name', onSortEvent: onSortDataColumn).buildDataColum('first_name'),
          _BuildDataColumn(labelValue: 'Last name',  onSortEvent: onSortDataColumn).buildDataColum('last_name'),
          _BuildDataColumn(labelValue: 'Email').buildDataColum(),
          _BuildDataColumn(labelValue: 'Gender').buildDataColum(),
          _BuildDataColumn(labelValue: 'Phone').buildDataColum()

        ],
        rows: List.generate(
            data.length,
            (index) => DataRow(
                onSelectChanged: (value) {
                  setState(() {
                    rowSelected[index] = value!;
                  });
                  // print(selected);
                },
                selected: rowSelected[index],
                cells: [
                  buildDataCell(index, "first_name"),
                  buildDataCell(index, "last_name"),
                  buildDataCell(index, "email"),
                  buildDataCell(index, "gender"),
                  buildDataCell(index, "phone"),
                ]

            )
        )
      ),
    );
  }
}


class _BuildDataColumn{
  final String labelValue;

  final void Function(int index , bool ascebding , String fieldValue )? onSortEvent;

  _BuildDataColumn({ required this.labelValue , this.onSortEvent});
  
   DataColumn  buildDataColum( [String fieldValue = '']) => DataColumn(
      label: Text(labelValue),
      onSort: onSortEvent != null  
          ? (int i , bool a) => onSortEvent!(i , a , fieldValue) 
          : null,
    );
}
