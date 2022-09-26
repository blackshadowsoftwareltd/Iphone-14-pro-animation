import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ConsumerWidget, WidgetRef;
import 'package:iphone_animation/providers/methods.dart';

class FloatingButtons extends ConsumerWidget {
  const FloatingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final acitivity = ref.watch(currentActivitie.state);
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      FloatingActionButton.small(
          onPressed: () async => await inCommingCall(ref)),
      FloatingActionButton.small(onPressed: () async => await inACall(ref)),
      FloatingActionButton.small(onPressed: () {}),
      FloatingActionButton.small(onPressed: () {}),
      FloatingActionButton.small(onPressed: () {}),
    ]);
  }
}
