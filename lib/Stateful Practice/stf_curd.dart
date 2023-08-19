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
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.deepPurple[400],
        title: const Text('Curd Operations'),
        centerTitle: true,
        actions: const [Icon(Icons.restore_from_trash_sharp)],
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
