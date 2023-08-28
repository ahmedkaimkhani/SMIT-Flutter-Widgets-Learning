import 'package:flutter/material.dart';
import 'package:flutter_class_1/Counter/counter_2.dart';
import 'package:flutter_class_1/Counter/counter_increment.dart';
import 'package:flutter_class_1/Gridview/gridview.dart';
import 'package:flutter_class_1/Gridview/simple_gridview.dart';
import 'package:flutter_class_1/MediaQuery/media_query.dart';
import 'package:flutter_class_1/Navigator/push_named.dart';
import 'package:flutter_class_1/Navigator/push_named_2.dart';
import 'package:flutter_class_1/Navigator/push_navigator.dart';
import 'package:flutter_class_1/Navigator/screen_3.dart';
import 'package:flutter_class_1/Stack/stack.pratice.dart';
import 'package:flutter_class_1/Stack/stack_postioned.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridview4(),
    );
  }
}

// For Navigator Push Named
// initialRoute: "/",
//       routes: {
//         '/': (context) => const PushNamedNavigator(),
//         '/firstscreen': (context) => const PushNamedNavigator2(),
//         '/secondscreen': (context) => const ThirdScreen()
//       },

class Gridview4 extends StatelessWidget {
  const Gridview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
