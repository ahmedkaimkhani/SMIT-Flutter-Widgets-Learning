import "package:flutter/material.dart";

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              childAspectRatio: 0.5),
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.deepPurple,
            ),
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
