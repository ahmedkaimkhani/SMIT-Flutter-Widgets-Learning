import 'package:flutter/material.dart';

class LocalStorage extends StatefulWidget {
  const LocalStorage({super.key});

  @override
  State<LocalStorage> createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            'text',
            style: TextStyle(fontSize: 35),
          ),
          TextButton(onPressed: () {}, child: const Text('Login'))
        ],
      ),
    );
  }
}
