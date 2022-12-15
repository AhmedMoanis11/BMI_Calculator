import 'package:flutter/material.dart';
import 'package:secondbmi/first.dart';
import 'package:secondbmi/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmi(),

    );

  }
}
