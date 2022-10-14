import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'quadmastecvalues.dart';

class HomePage extends StatelessWidget {
  List<MilkData> data = [
    MilkData('test 1', 35),
    MilkData('test 2', 28),
    MilkData('test 3', 32),
    MilkData('test 4', 34),
    MilkData('test 5', 33),
    MilkData('test 6', 40),
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
                  MaterialPageRoute(builder: (context) => quadmastecvalues()));
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
          title: ChartTitle(text: 'RFID milk VALUES '),
          legend: Legend(
            isVisible: true,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<MilkData, String>>[
            LineSeries<MilkData, String>(
              dataSource: data,
              xValueMapper: (MilkData milk, _) => milk.month,
              yValueMapper: (MilkData milk, _) => milk.milk,
              name: 'milk values',
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

class MilkData {
  final String month;
  final double milk;

  MilkData(this.month, this.milk);
}
