import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      FloatingActionButton.small(onPressed: () {}),
      FloatingActionButton.small(onPressed: () {}),
      FloatingActionButton.small(onPressed: () {}),
      FloatingActionButton.small(onPressed: () {}),
      FloatingActionButton.small(onPressed: () {}),
    ]);
  }
}
