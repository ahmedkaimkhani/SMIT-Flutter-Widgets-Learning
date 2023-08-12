import 'package:flutter/material.dart';

class PracticeWidgets extends StatelessWidget {
  const PracticeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Practice Widgets'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)
                ),
                height: 100,
                width: 100,
                child: const Center(
                    child: Text(
                  'Design',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
