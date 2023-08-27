import 'package:flutter/material.dart';

class PushNamedNavigator2 extends StatelessWidget {
  const PushNamedNavigator2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PushNamed Navigator Two'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/secondscreen');
            },
            child: const Text('Move to 3rd Page')),
      ),
    );
  }
}
