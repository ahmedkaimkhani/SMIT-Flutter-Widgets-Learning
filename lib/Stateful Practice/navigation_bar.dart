import 'package:flutter/material.dart';

class RestoreWidget extends StatefulWidget {
  const RestoreWidget({super.key});

  @override
  State<RestoreWidget> createState() => _RestoreWidgetState();
}

class _RestoreWidgetState extends State<RestoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.restore),
                        Text("Restore"),
                      ],
                    )),
              ),
            ),
            Expanded(
              child: Container(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.restore),
                        Text("Restore"),
                      ],
                    )),
              ),
            )
          ],
        )
      ],
    );
  }
}
