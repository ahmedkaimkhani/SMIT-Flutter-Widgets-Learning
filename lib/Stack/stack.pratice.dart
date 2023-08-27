import "package:flutter/material.dart";

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stock Practice'),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            color: Colors.red,
            height: 120,
            width: 120,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.green,
            height: 80,
            width: 80,
          )
        ]),
      ),
    );
  }
}
