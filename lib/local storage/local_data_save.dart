import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends StatefulWidget {
  const LocalStorage({super.key});

  @override
  State<LocalStorage> createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  String isLogin = 'user not logged in';

  setLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogin = 'User logged in';
    await prefs.setString('isLogin', isLogin);
    setState(() {});
  }

  getLoginState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogin = prefs.getString(
          'isLogin',
        ) ??
        isLogin;
    setState(() {});
  }

  fetchInitialData() async {
    await getLoginState();
  }

  @override
  void initState() {
    super.initState();
    fetchInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              isLogin,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
                onPressed: () {
                  setLogin();
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
