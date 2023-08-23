import 'package:flutter/material.dart';
import 'package:flutter_class_1/Stateful%20Practice/trash.dart';

List friensList = [];
List trashList = [];

class StfCurdPractice extends StatefulWidget {
  const StfCurdPractice({Key? key}) : super(key: key);

  @override
  State<StfCurdPractice> createState() => _StfCurdPracticeState();
}

class _StfCurdPracticeState extends State<StfCurdPractice> {
  TextEditingController textEditController = TextEditingController();
  TextEditingController updateController = TextEditingController();

  addFriend() {
    setState(() {
      friensList.add(textEditController.text);
    });
    textEditController.clear();
  }

  temporaryDelete(index) {
    setState(() {
      trashList.insert(0, friensList[index]);
      friensList.removeAt(index);
    });
  }

  updateFriend(index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey[300],
          title: const Text(
            'Do you want to edit ?',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          content: TextField(
            controller: updateController,
            cursorColor: Colors.deepPurple,
            decoration: const InputDecoration(
              hintText: 'Edit Text',
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800),
              // fillColor: Colors.grey,
              border: InputBorder.none,
            ),
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: const Text('Cancel')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    friensList[index] = updateController.text;
                    updateController.clear();
                    Navigator.pop(context);
                  });
                },
                child: const Text('Done'))
          ],
        );
      },
    );
  }

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
                    children: [
                      const Text(
                        'C U R D  O P E R A T I O N S',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TrashScreen(),
                              ));
                            });
                          },
                          icon: const Icon(
                            Icons.restore_from_trash_sharp,
                            color: Colors.deepPurple,
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 25, left: 15, right: 15, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
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
                    controller: textEditController,
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                        hintText: 'Enter content',
                        hintStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w800),
                        // fillColor: Colors.grey,
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: () {
                              addFriend();
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.deepPurple,
                            ))),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: friensList.length,
                  // shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          const EdgeInsets.only(top: 20, left: 15, right: 15),
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
                              friensList[index].toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  updateController.text = friensList[index];
                                  updateFriend(index);
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.deepPurple,
                                )),
                            IconButton(
                              onPressed: () {
                                temporaryDelete(index);
                              },
                              icon: const Icon(
                                Icons.delete_outline,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
