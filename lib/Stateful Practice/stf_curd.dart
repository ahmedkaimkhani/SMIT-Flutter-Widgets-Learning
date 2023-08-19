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
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 0.5, color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      Text(
                        'Curd Operations',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.add),
                      Icon(Icons.restore_from_trash_sharp)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
