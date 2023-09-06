import 'dart:html';

import 'package:flutter/material.dart';

class AsyncPractice extends StatefulWidget {
  const AsyncPractice({super.key});

  @override
  State<AsyncPractice> createState() => _AsyncPracticeState();
}

class _AsyncPracticeState extends State<AsyncPractice> {
  bool isLogin = false;

  loginLogout() async {
    isLogin = !isLogin;
    if (isLogin) {
      await Future.delayed(Duration(seconds: 2));
    }
    setState(() {});
    // print statement is for checking counter is working perfectly or not.
    print('done');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Async'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(!isLogin ? 'login your id' : 'Log out id'),
            ElevatedButton(
              onPressed: () {
                loginLogout();
              },
              child: Text(!isLogin ? 'log in' : 'log out'),
            ),
          ],
        ),
      ),
    );
  }
}
