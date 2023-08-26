import "package:flutter/material.dart";

class SimpleGridView extends StatelessWidget {
  const SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        // childAspectRatio: 0.1,
        // cacheExtent: 0.5,
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
      )),
    );
  }
}
