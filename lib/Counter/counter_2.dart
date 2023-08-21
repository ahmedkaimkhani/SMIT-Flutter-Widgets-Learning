import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  // counter value
  int counter = 0;
  bool isZero = true;

  // chage value
  changeValue() {
    setState(() {
      isZero = !isZero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('C O U N T E R   A P P'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        color: Colors.amber[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Value: ${isZero ? 0 : 1}',
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 50, right: 50),
                child: Text(
                  'T a p   H e r e',
                  style: TextStyle(fontSize: 20, color: Colors.amber[400]),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

// Multiple Approches to do same work

// (1)
// // chage value
//   changeValue() {
//     setState(() {
//       counter == 0 ? counter++ : counter--;
//     });
//   }

// (2)
// chage value
  // changeValue() {
  //   setState(() {
  //     if (counter == 0) {
  //       counter++;
  //     } else {
  //       counter--;
  //     }
  //   });
  // }

  // (3)
  // // chage value
  // changeValue() {
  //   setState(() {
  //     isZero = !isZero;
  //   });
  // }
  // Text(
  //             'Value: ${isZero ? 0 : 1}',
  //             style: const TextStyle(
  //                 fontSize: 40,
  //                 color: Colors.deepPurple,
  //                 fontWeight: FontWeight.w700),
  //           ),