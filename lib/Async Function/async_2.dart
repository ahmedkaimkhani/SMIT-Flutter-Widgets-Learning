import 'dart:html';

import 'package:flutter/material.dart';

class AsyncPractice extends StatefulWidget {
  const AsyncPractice({super.key});

  @override
  State<AsyncPractice> createState() => _AsyncPracticeState();
}

class _AsyncPracticeState extends State<AsyncPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('login your id'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('log in'),
          ),
        ],
      ),
    );
  }
}
