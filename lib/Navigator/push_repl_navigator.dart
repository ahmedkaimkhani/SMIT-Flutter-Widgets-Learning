import 'package:flutter/material.dart';

class PushReplNavigator extends StatelessWidget {
  const PushReplNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2nd Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Move to 3rd Page')),
      ),
    );
  }
}
