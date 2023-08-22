import 'package:flutter/material.dart';
import 'package:flutter_class_1/Stateful%20Practice/stf_curd.dart';

List permDelete = [];

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  permanentDelete() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 15, right: 15, bottom: 20),
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
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back,
                            color: Colors.deepPurple),
                      ),
                      const Text(
                        'T R A S H',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      const Spacer(),
                      const Icon(Icons.restore_from_trash_sharp,
                          color: Colors.deepPurple)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: trashList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                          left: 15,
                          right: 15,
                        ),
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
                            children: [
                              Text(
                                trashList[index].toString(),
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                              const Spacer(),
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Select'))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
