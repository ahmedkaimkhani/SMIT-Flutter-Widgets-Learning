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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const TextField(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10),
            child: Text(
              'Add',
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
