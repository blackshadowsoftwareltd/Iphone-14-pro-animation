import 'package:flutter/material.dart';

import '../helper/const.dart' show img;
import '../helper/size.dart' show ScreenSize;

class InACall extends StatelessWidget {
  const InACall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: SizedBox(
            width: ScreenSize.smallHeight * .8,
            height: ScreenSize.smallHeight * .8,
            child: Image.network(img, fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('In a Call With', style: TextStyle(color: Colors.white)),
                Text(
                  'Mr. John Doe',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        FloatingActionButton.small(
            backgroundColor: Colors.red,
            child: const Icon(Icons.call_end, color: Colors.white),
            onPressed: () {}),
        FloatingActionButton.small(
            backgroundColor: Colors.green,
            child: const Icon(Icons.call, color: Colors.white),
            onPressed: () {}),
      ]),
    );
  }
}
