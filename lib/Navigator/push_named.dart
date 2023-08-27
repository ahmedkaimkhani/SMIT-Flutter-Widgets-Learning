import 'package:flutter/material.dart';

class PushNamedNavigator extends StatelessWidget {
  const PushNamedNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PushNamed Navigator one'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/firstscreen');
            },
            child: const Text('Move to 2nd Page')),
      ),
    );
  }
}
