import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color? mainColor = Colors.grey[300];
  Color a = Colors.grey;
  Color b = Colors.white;
  Color ic = Colors.black;
  Color c = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: mainColor,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: a,
                          offset: const Offset(5, 5),
                          blurRadius: 15,
                          spreadRadius: 1),
                      BoxShadow(
                          color: b,
                          offset: const Offset(-5, -5),
                          blurRadius: 15,
                          spreadRadius: 1),
                    ]),
                child: Icon(
                  Icons.android,
                  size: 50,
                  color: ic,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 90,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mainColor = Colors.black;
                            a = Colors.white;
                            b = Colors.white;
                            ic = Colors.white;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          'Dark',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 90,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            mainColor = Colors.grey[300];
                            a = Colors.grey;
                            b = Colors.black12;
                            ic = Colors.black;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Text(
                          'Light',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
