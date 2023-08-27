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
        ],
      ),
    );
  }
}
