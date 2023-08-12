import 'package:flutter/material.dart';

class PracticeWidgets extends StatelessWidget {
  const PracticeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Practice Widgets'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500
                        ),
                        const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white
                        ),
                      ]
                    ),
                    height: 100,
                    width: 100,
                    child: const Center(
                        child: Text(
                      'Design',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500
                        ),
                        const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white
                        ),
                      ]
                    ),
                    height: 100,
                    width: 100,
                    child: const Center(
                        child: Text(
                      'Design',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500
                        ),
                        const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white
                        ),
                      ]
                    ),
                    height: 100,
                    width: 100,
                    child: const Center(
                        child: Text(
                      'Design',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500
                        ),
                        const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white
                        ),
                      ]
                    ),
                    height: 100,
                    width: 100,
                    child: const Center(
                        child: Text(
                      'Design',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500
                        ),
                        const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white
                        ),
                      ]
                    ),
                    height: 100,
                    width: 100,
                    child: const Center(
                        child: Text(
                      'Design',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500
                        ),
                        const BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          color: Colors.white
                        ),
                      ]
                    ),
                    height: 100,
                    width: 100,
                    child: const Center(
                        child: Text(
                      'Design',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
