import 'package:flutter/material.dart';

class PushNavigator extends StatelessWidget {
  const PushNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Move to 2nd Page')),
      ),
    );
  }
}
