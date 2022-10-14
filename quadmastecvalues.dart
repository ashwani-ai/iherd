import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_fl_chart/HomePage.dart';
import 'quadmastecgraph.dart';

class quadmastecvalues extends StatelessWidget {
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
                  SizedBox(height: 50.0),
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
                          decoration: InputDecoration(
                              labelText: " RFID NUMBER ",
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                              labelText: " TEST NUMBER ",
                              fillColor: Colors.grey.shade100,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(height: 10),
                        Row(children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  child: Text(
                                    "FR",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                              flex: 1,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(3, 0, 0, 5),
                                      child: Text(
                                        "FL",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16))),
                                      ),
                                    ),
                                  ])),
                          SizedBox(width: 5),
                          Expanded(
                              flex: 1,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(3, 0, 0, 5),
                                      child: Text(
                                        "BL",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16))),
                                      ),
                                    ),
                                  ])),
                          SizedBox(width: 5),
                          Expanded(
                              flex: 1,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(3, 0, 0, 5),
                                      child: Text(
                                        "BR",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16))),
                                      ),
                                    ),
                                  ]))
                        ]),
                        SizedBox(height: 30),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              quadmastecgraph()));
                                },
                                child: Text(
                                  "NEXTPAGE",
                                  style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 2,
                                      color: Colors.black),
                                ),
                                style: OutlinedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              )
                            ])
                      ])),
                ],
              ),
            )));
  }
}
