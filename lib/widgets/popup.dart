import 'package:flutter/material.dart';
import '../helper/size.dart' show ScreenSize;
import 'incomming_call.dart' show IncommingCall;

class PopupBar extends StatelessWidget {
  const PopupBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(10),
      color: Colors.black,
      child: SizedBox(
        // width: 22,
        // height: 22,
        width: ScreenSize.maxWidth,
        height: ScreenSize.smallHeight,
        child: const IncommingCall(),
      ),
    );
  }
}
