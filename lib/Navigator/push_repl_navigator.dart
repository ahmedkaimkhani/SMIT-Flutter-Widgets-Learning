import 'package:flutter/material.dart';
import 'package:flutter_class_1/Navigator/screen_3.dart';

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
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const ThirdScreen(),
              ));
            },
            child: const Text('Move to 3rd Page')),
      ),
    );
  }
}
