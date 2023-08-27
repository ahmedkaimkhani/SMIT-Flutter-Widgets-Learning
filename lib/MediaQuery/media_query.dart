import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Media Query'),
        ),
        body: Container(
          height: height * 0.7,
          width: width * 0.7,
          color: Colors.amber,
        ));
  }
}
