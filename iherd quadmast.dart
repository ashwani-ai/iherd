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
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Center(
                        child: Container(
                            width: 150,
                            height: 80,
                            child: Image.asset(
                              'assets/images/ims.jpeg',
                              fit: BoxFit.cover,
                            )))),
                SizedBox(height: 60.0),
                Container(
                    height: 470,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.only(left: 1),
                    child: Column(children: [
                      TextField(
                        decoration: InputDecoration(
                            labelText: " CATTLE ID",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: " RFID NUMBER ",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: " YIELD/DAY",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: " VOLUME OF MILK FROM COW",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(height: 100),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "UPDATE",
                                style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    color: Colors.black),
                              ),
                              style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("SAVE",
                                  style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 2,
                                      color: Colors.white)),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  padding: EdgeInsets.symmetric(horizontal: 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            )
                          ])
                    ])),
              ],
            ),
          )),
    );
  }
}
