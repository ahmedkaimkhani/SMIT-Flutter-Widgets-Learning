import 'package:flutter/material.dart';

class CounterIncrement extends StatefulWidget {
  const CounterIncrement({super.key});

  @override
  State<CounterIncrement> createState() => _CounterIncrementState();
}

class _CounterIncrementState extends State<CounterIncrement> {
  // counter value
  int counter = 0;

  // counter increment method
  counterValuePlus() {
    setState(() {
      counter++;
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
              'Value: $counter',
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
              onPressed: () {
                counterValuePlus();
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
