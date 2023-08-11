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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
              ),
            ],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepOrange,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.deepOrange,
              ),
              Container(
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
