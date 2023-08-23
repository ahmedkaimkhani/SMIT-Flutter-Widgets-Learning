import 'package:flutter/material.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({super.key});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
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
