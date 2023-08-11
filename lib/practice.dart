import 'package:flutter/material.dart';

class PracticeWidgets extends StatelessWidget {
  const PracticeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Widgets'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}