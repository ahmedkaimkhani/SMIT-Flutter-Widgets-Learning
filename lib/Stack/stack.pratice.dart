import "package:flutter/material.dart";

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Stock Practice'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: Stack(children: [
                Center(
                  child: Container(
                    color: Colors.red,
                    height: 120,
                    width: 120,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.green,
                    height: 80,
                    width: 80,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.deepPurple,
                    height: 60,
                    width: 60,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.amber,
                    height: 40,
                    width: 40,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.orange,
                    height: 20,
                    width: 20,
                  ),
                )
              ]),
            );
          },
        ));
  }
}
