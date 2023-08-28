import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Practie'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 60,
          width: 60,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
              const Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
