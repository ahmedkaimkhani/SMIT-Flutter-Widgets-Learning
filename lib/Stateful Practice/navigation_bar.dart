import 'package:flutter/material.dart';

class RestoreWidget extends StatefulWidget {
  const RestoreWidget({super.key});

  @override
  State<RestoreWidget> createState() => _RestoreWidgetState();
}

class _RestoreWidgetState extends State<RestoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.restore,
                      size: 20,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      "Restore",
                      style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.delete,
                      size: 20,
                      color: Colors.deepPurple,
                    ),
                    Text(
                      "Permanently delete",
                      style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
