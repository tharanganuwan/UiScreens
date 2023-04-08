import 'package:flutter/material.dart';
import 'package:screens/screens/page1.dart';
import 'package:screens/screens/page2.dart';
import 'package:screens/screens/page3.dart';
import 'package:screens/screens/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Screens',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Page1(),
      // home: const Page2(),
      // home: const Page3(),
      // home: const Page4(),
    );
  }
}

