import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final a = TextEditingController();
  final b = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Builder(builder: (context) {
        return SafeArea(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/image_two.png",
                      width: width * 0.25,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "HNGi8",
                      style: TextStyle(fontSize: width * 0.05),
                    ),
                    Image.asset("assets/image_one.png", width: width * 0.25),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                        child: Padding(
                      padding: EdgeInsets.all(width * 0.1),
                      child: Column(
                        children: [
                          TextField(
                            controller: a,
                            decoration: InputDecoration(
                                labelText: "First Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          SizedBox(height: height * 0.02),
                          TextField(
                            controller: b,
                            decoration: InputDecoration(
                                labelText: "Last Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          SizedBox(height: height * 0.02),
                          TextButton(
                              onPressed: () {
                                showBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        color: Colors.grey,
                                        height: 250,
                                        child: Center(
                                            child: Text(
                                          "Welcome ${a.text} ${b.text}, This should Certify your second task, Goodluck!",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        )),
                                      );
                                    });
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: width * 0.04,
                                    color: Colors.white),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: (Colors.blueAccent),
                                  shape: const BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
