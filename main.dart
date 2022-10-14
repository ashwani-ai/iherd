import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'quadmastmilk .dart';
import 'quadmastecvalues.dart';
import 'quadmastecgraph.dart';
import 'quadmasttemp.dart';
import 'quadmasttempgraph.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'FL Line Chart';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.blue),
        home: quadmastmilk(),
      );
}
