import 'package:flutter/material.dart';

class AsyncFunction extends StatefulWidget {
  const AsyncFunction({super.key});

  @override
  State<AsyncFunction> createState() => _AsyncFunctionState();
}

class _AsyncFunctionState extends State<AsyncFunction> {
  int counter = 0;
  int counter2 = 0;
  int counter3 = 0;

  updateValue() {
    counter++;
    counter2++;
    setState(() {});
    counter3++;

    // print statement is for checking counter is working perfectly or not.
    print(counter);
    print(counter2);
    print(counter3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async Function'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(counter.toString()),
          Text(counter2.toString()),
          Text(counter3.toString()),
          ElevatedButton(
              onPressed: () {
                updateValue();
              },
              child: const Text('Fetch')),
        ],
      ),
    );
  }
}
