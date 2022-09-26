import 'package:flutter_riverpod/flutter_riverpod.dart' show WidgetRef;
import 'package:iphone_animation/helper/duration.dart';
import 'package:iphone_animation/helper/size.dart' show ScreenSize;

// import '../helper/duration.dart' show duration100, duration200, duration50;
import '../helper/enum.dart' show Activities;
import 'provider.dart' show currentActivitie, h, visibility, w;

double cardWidth(Activities a) {
  if (a == Activities.none) {
    w = ScreenSize.smallWidth;
  } else if (a == Activities.calling ||
      a == Activities.incoming ||
      a == Activities.message ||
      a == Activities.videoCalling) {
    w = ScreenSize.maxWidth;
  }
  return w;
}

double cardHeight(Activities a) {
  if (a == Activities.none) {
    h = ScreenSize.minHeight;
  } else if (a == Activities.calling ||
      a == Activities.incoming ||
      a == Activities.message) {
    h = ScreenSize.smallHeight;
  } else if (a == Activities.videoCalling) {
    h = ScreenSize.maxHeight;
  }
  return h;
}

Future<void> inCommingCall(WidgetRef ref) async {
  final acitivity = ref.watch(currentActivitie.state);
  final isVisible = ref.watch(visibility.state);
  if (isVisible.state == true && acitivity.state != Activities.incoming) {
    acitivity.state = Activities.none;
    isVisible.state = false;
    await Future.delayed(duration200);
  }
  if (acitivity.state == Activities.incoming) {
    acitivity.state = Activities.none;
    isVisible.state = false;
  } else {
    acitivity.state = Activities.incoming;
    isVisible.state = true;
  }
}

Future<void> inACall(WidgetRef ref) async {
  final acitivity = ref.watch(currentActivitie.state);
  final isVisible = ref.watch(visibility.state);
  if (isVisible.state == true && acitivity.state != Activities.calling) {
    acitivity.state = Activities.none;
    isVisible.state = false;
    await Future.delayed(duration200);
  }
  if (acitivity.state == Activities.calling) {
    acitivity.state = Activities.none;
    isVisible.state = false;
  } else {
    acitivity.state = Activities.calling;
    isVisible.state = true;
  }
}

Future<void> message(WidgetRef ref) async {
  final acitivity = ref.watch(currentActivitie.state);
  final isVisible = ref.watch(visibility.state);
  if (isVisible.state == true && acitivity.state != Activities.message) {
    acitivity.state = Activities.none;
    isVisible.state = false;
    await Future.delayed(duration200);
  }
  if (acitivity.state == Activities.message) {
    acitivity.state = Activities.none;
    isVisible.state = false;
  } else {
    acitivity.state = Activities.message;
    isVisible.state = true;
  }
}

Future<void> videoCalling(WidgetRef ref) async {
  final acitivity = ref.watch(currentActivitie.state);
  final isVisible = ref.watch(visibility.state);
  if (isVisible.state == true && acitivity.state != Activities.videoCalling) {
    acitivity.state = Activities.none;
    isVisible.state = false;
    await Future.delayed(duration200);
  }
  if (acitivity.state == Activities.videoCalling) {
    acitivity.state = Activities.none;
    isVisible.state = false;
  } else {
    acitivity.state = Activities.videoCalling;
    isVisible.state = true;
  }
}
