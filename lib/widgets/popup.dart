import 'package:flutter/material.dart';
import '../helper/size.dart' show ScreenSize;

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
        width: ScreenSize.minWidth,
        height: ScreenSize.minHeight,
      ),
    );
  }
}
