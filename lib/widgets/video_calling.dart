import 'package:flutter/material.dart';

import '../helper/const.dart' show user1, user2;
import '../helper/size.dart' show ScreenSize;

class VideoCalling extends StatelessWidget {
  const VideoCalling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: ScreenSize.maxWidth * .4,
            height: ScreenSize.maxHeight * .9,
            child: Image.network(user1, fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...[
                  const Text('In a video calling',
                      style: TextStyle(color: Colors.white)),
                  const Text(
                    'Donald John Modi',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: const [
                      Text('02:40', style: TextStyle(color: Colors.white)),
                      Text('minuts', style: TextStyle(color: Colors.white)),
                    ]),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: ScreenSize.smallWidth * .75,
                        height: ScreenSize.maxHeight * .45,
                        child: Image.network(user2, fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.small(
                        backgroundColor: Colors.white60,
                        child: const Icon(Icons.cameraswitch_outlined,
                            color: Colors.white),
                        onPressed: () {}),
                    FloatingActionButton.small(
                        backgroundColor: Colors.white60,
                        child: const Icon(Icons.mic_off, color: Colors.white),
                        onPressed: () {}),
                    FloatingActionButton.small(
                        backgroundColor: Colors.red,
                        child: const Icon(Icons.call_end, color: Colors.white),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
