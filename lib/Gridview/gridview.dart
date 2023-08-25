import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
