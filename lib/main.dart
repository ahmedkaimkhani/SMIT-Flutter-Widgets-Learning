import 'package:flutter/material.dart';
import 'package:flutter_class_1/Counter/counter_2.dart';
import 'package:flutter_class_1/Counter/counter_increment.dart';
import 'package:flutter_class_1/Gridview/gridview.dart';
import 'package:flutter_class_1/Stateful%20Practice/stf_curd.dart';
import 'package:flutter_class_1/home_screen.dart';
import 'package:flutter_class_1/practice.dart';

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
      home: MyGridView(),
    );
  }
}
