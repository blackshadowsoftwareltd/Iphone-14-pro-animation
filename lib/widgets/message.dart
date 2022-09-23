import 'package:flutter/material.dart';

import '../helper/const.dart' show user2;
import '../helper/size.dart' show ScreenSize;

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: SizedBox(
            width: ScreenSize.smallHeight * .7,
            height: ScreenSize.smallHeight * .7,
            child: Image.network(user2, fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'New message from John',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text('Hi', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
        FloatingActionButton.small(
            backgroundColor: Colors.white60,
            child: const Icon(Icons.message, color: Colors.white),
            onPressed: () {}),
      ]),
    );
  }
}
