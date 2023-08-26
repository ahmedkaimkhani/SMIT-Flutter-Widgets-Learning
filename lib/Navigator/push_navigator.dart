import 'package:flutter/material.dart';
import 'package:flutter_class_1/Navigator/push_repl_navigator.dart';

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
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PushReplNavigator(),
              ));
            },
            child: const Text('Move to 2nd Page')),
      ),
    );
  }
}
