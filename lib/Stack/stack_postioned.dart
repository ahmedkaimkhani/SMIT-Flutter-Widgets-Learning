import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Practie'),
      ),
      body: Stack(
        children: [
          Container(
            width: 40,
            height: 40,
            color: Colors.red,
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
