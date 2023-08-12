import 'package:flutter/material.dart';

class PracticeWidgets extends StatelessWidget {
  const PracticeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Practice Widgets'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: const Offset(4, 4),
                      color: Colors.grey.shade400
                    ),
                    const BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(-4, -4),
                      color: Colors.white
                    ),
                  ]
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
