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
        Container(
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.restore,
                        size: 20,
                      ),
                      Text(
                        "Restore",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.delete,
                        size: 20,
                      ),
                      Text(
                        "Permanently delete",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 8, left: 14, right: 14),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: Padding(
        //           padding: const EdgeInsets.only(left: 14),
        //           child: Container(
        //             child: ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     backgroundColor: Colors.deepPurple),
        //                 onPressed: () {},
        //                 child: Column(
        //                   children: const [
        //                     Icon(
        //                       Icons.restore,
        //                       size: 20,
        //                     ),
        //                     Text(
        //                       "Restore",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                   ],
        //                 )),
        //           ),
        //         ),
        //       ),
        //       Expanded(
        //         child: Padding(
        //           padding: const EdgeInsets.only(left: 14),
        //           child: Container(
        //             child: ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //                     backgroundColor: Colors.deepPurple),
        //                 onPressed: () {},
        //                 child: Column(
        //                   children: const [
        //                     Icon(
        //                       Icons.delete,
        //                       size: 20,
        //                     ),
        //                     Text(
        //                       "Permanently delete",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                   ],
        //                 )),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}
