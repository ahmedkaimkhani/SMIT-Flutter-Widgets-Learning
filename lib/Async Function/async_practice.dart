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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async Function'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(counter.toString()),
          Text(counter2.toString()),
          Text(counter3.toString()),
          ElevatedButton(onPressed: () {}, child: const Text('Fetch')),
        ],
      ),
    );
  }
}
