import 'package:flutter/material.dart';
import 'package:flutter_google_maps/flutter_google_maps.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 400,
            height: 400,
            child: DataTable(
              showCheckboxColumn: true,
              columns: [
                DataColumn(
                  label: Text('Food'),
                ),
                DataColumn(label: Text('Price'))
              ],
              rows: [
                DataRow(
                    cells: [DataCell(Text('Pizza')), DataCell(Text('10000'))])
              ],
            )),
      ),
    );
  }
}
