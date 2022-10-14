import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/back.jpeg'),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Center(
                          child: Container(
                              width: 150,
                              height: 80,
                              child: Image.asset(
                                'assets/images/ph.jpg',
                                fit: BoxFit.cover,
                              )))),
                  SizedBox(height: 5),
                  Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Center(
                          child: Container(
                              width: 300,
                              height: 300,
                              child: Image.asset(
                                'assets/images/ref.jpg',
                                fit: BoxFit.cover,
                              )))),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      child: Text(
                        'REFER A FRIEND',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ]))));
  }
}
