import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'quadmasttemp.dart';

class quadmasttempgraph extends StatelessWidget {
  List<TempData> data = [
    TempData('test 1', 32),
    TempData('test 2', 34),
    TempData('test 3', 38),
    TempData('test 4', 36),
    TempData('test 5', 35),
    TempData('test 6', 40),
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
          title: ChartTitle(text: 'RFID Temperature values'),
          legend: Legend(
            isVisible: true,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<TempData, String>>[
            LineSeries<TempData, String>(
              dataSource: data,
              xValueMapper: (TempData Temp, _) => Temp.values,
              yValueMapper: (TempData Temp, _) => Temp.data,
              name: 'Temp values',
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

class TempData {
  final String values;
  final double data;

  TempData(this.values, this.data);
}
