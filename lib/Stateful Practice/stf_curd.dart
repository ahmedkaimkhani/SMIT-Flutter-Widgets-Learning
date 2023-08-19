import 'package:flutter/material.dart';

class StfCurdPractice extends StatefulWidget {
  const StfCurdPractice({super.key});

  @override
  State<StfCurdPractice> createState() => _StfCurdPracticeState();
}

class _StfCurdPracticeState extends State<StfCurdPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: const [
              Text('Curd Operations'),
              Icon(Icons.add),
              Icon(Icons.restore_from_trash_sharp)
            ],
          )
        ],
      ),
    ));
  }
}
