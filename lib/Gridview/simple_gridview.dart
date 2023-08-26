import "package:flutter/material.dart";

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ),
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
