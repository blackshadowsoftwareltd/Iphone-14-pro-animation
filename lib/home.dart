import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;
import 'helper/size.dart' show ScreenSize;

import 'popups/popup.dart' show PopupBar;
import 'widgets/buttons.dart' show FloatingButtons;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: ScreenSize.width,
        height: ScreenSize.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: const [PopupBar()],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingButtons(),
    );
  }
}
