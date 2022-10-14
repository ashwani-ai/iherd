import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: EditProfileUI(),
//     );
//   }
// }
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
                    padding: const EdgeInsets.only(top: 250.0),
                    child: Center(
                        child: Container(
                            width: 200,
                            height: 150,
                            child: Image.asset(
                              'assets/images/imp.jpeg',
                              fit: BoxFit.cover,
                            ))))
              ])),
        ));
  }
}

class EditProfileUI extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfileUI> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FARMER PROFILE '),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: const [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black12)
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://cdn1.vectorstock.com/i/1000x1000/89/25/farmers-flat-icon-with-long-shadow-vector-6158925.jpg'))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Colors.blue),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                buildTextField(" FULL NAME", "Demon", false),
                buildTextField("ID NUMBER", "11", false),
                buildTextField("GENDER", "MALE/FEMALE", false),
                buildTextField("DATE OF BIRTH", "DD/MM/YY", false),
                buildTextField("ROLL", "OWNER/RENT", false),
                buildTextField("NUMBER OF FARM", "25", false),
                buildTextField("ASSOCIATED ORGANIZATION ", "TANVAS", false),
                SizedBox(height: 30),
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
              ],
            ),
          )),
    );
  }
}

Widget buildTextField(
    String lableText, String placeholder, bool isPasswordTextField) {
  return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
          obscureText: isPasswordTextField ? true : false,
          decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    onPressed: () {})
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: lableText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          )));
}
