import 'package:flutter/material.dart';

class PushNamedNavigator extends StatelessWidget {
  const PushNamedNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PushNamed Navigator Two'),
      ),
      body: Center(
        child:
            ElevatedButton(onPressed: () {}, child: const Text('Text Button')),
      ),
    );
  }
}
