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
      body: Stack(children: [
        Container(
          color: Colors.red,
          height: 200,
          width: 200,
        )
      ]),
    );
  }
}
