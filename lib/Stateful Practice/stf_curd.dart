import 'package:flutter/material.dart';

class StfCurdPractice extends StatefulWidget {
  const StfCurdPractice({Key? key}) : super(key: key);

  @override
  State<StfCurdPractice> createState() => _StfCurdPracticeState();
}

class _StfCurdPracticeState extends State<StfCurdPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                    // border: Border.all(width: 0.5, color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500),
                      const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      Text(
                        'Curd Operations',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      Spacer(),
                      Icon(Icons.restore_from_trash_sharp,
                          color: Colors.deepPurple)
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                    // border: Border.all(width: 0.5, color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500),
                      const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.deepPurple,
                            ))),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
