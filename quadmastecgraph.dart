import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'quadmasttemp.dart';

class quadmastecgraph extends StatelessWidget {
  List<EcData> BR = [
    EcData('test 1', 3),
    EcData('test 2', 3.7),
    EcData('test 3', 4.2),
    EcData('test 4', 5.4),
    EcData('test 5', 7.3),
    EcData('test 6', 8),
  ];

  List<EcData> FR = [
    EcData('test 1', 3),
    EcData('test 2', 3.7),
    EcData('test 3', 4.2),
    EcData('test 4', 5.4),
    EcData('test 5', 7.3),
    EcData('test 6', 8),
  ];

  List<EcData> FL = [
    EcData('test 1', 3),
    EcData('test 2', 3.7),
    EcData('test 3', 4.2),
    EcData('test 4', 5.4),
    EcData('test 5', 7.3),
    EcData('test 6', 8),
  ];

  List<EcData> BL = [
    EcData('test 1', 3),
    EcData('test 2', 3.7),
    EcData('test 3', 4.2),
    EcData('test 4', 5.4),
    EcData('test 5', 7.3),
    EcData('test 6', 8),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('previous'),
        actions: [
          TextButton(
            child: Text("NEXT"),
            style: TextButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 20,
              ),
              primary: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => quadmastemp()));
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        brightness: Brightness.dark,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(text: 'RFID ECvalues'),
          legend: Legend(
            isVisible: true,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<EcData, String>>[
            LineSeries<EcData, String>(
              dataSource: BR,
              xValueMapper: (EcData EC, _) => EC.values,
              yValueMapper: (EcData EC, _) => EC.data,
              name: 'EC values',
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

class EcData {
  final String values;
  final double data;

  EcData(this.values, this.data);
}
