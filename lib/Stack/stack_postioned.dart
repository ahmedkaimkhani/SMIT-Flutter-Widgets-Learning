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
        children: const [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
          ),
          Positioned(
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
