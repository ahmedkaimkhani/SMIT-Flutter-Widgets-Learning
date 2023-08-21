import 'package:flutter/material.dart';

class StfCurdPractice extends StatefulWidget {
  const StfCurdPractice({Key? key}) : super(key: key);

  @override
  State<StfCurdPractice> createState() => _StfCurdPracticeState();
}

class _StfCurdPracticeState extends State<StfCurdPractice> {
  List friensList = [];
  TextEditingController textEditController = TextEditingController();

  addFriend() {
    setState(() {
      friensList.add(textEditController.text);
      textEditController.clear();
    });
  }

  deleteFriend(index) {
    setState(() {
      friensList.removeAt(index);
    });
  }

  updateFriend(index) {
    setState(() {});
  }

  alerDialogEdit() {
    setState(() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              'Do you want to edit ?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            content: TextField(
              controller: textEditController,
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
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Done'))
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
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
              ListView.builder(
                itemCount: friensList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
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
                          Text(
                            friensList[index].toString(),
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                alerDialogEdit();
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.deepPurple,
                              )),
                          IconButton(
                            onPressed: () {
                              deleteFriend(index);
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
            ],
          ),
        ),
      ),
    );
  }
}
