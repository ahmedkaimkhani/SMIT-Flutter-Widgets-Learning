import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Learning Widgets'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.deepOrange,
              )
            ],
          )
        ],
      ),
    );
  }
}