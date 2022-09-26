import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Consumer;
import 'package:iphone_animation/helper/controllers/animation.dart';
import '../helper/duration.dart';
import '../helper/enum.dart' show Activities;
import '../providers/methods.dart' show cardHeight, cardWidth;
import '../providers/provider.dart' show currentActivitie, visibility;
import 'in_a_call.dart' show InACall;
import 'incomming_call.dart' show IncommingCall;
import 'message.dart' show Message;

class PopupBar extends StatefulWidget {
  const PopupBar({super.key});

  @override
  State<PopupBar> createState() => _PopupBarState();
}

class _PopupBarState extends State<PopupBar> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    initController();
  }

  @override
  void dispose() {
    super.dispose();
    disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, __) {
      final acitivity = ref.watch(currentActivitie);
      final isVisable = ref.watch(visibility);
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(10),
        color: Colors.black,
        child: AnimatedSize(
          duration: duration300,
          reverseDuration: duration100,
          curve: Curves.easeInOutCubic,
          child: SizedBox(
            width: cardWidth(acitivity),
            height: cardHeight(acitivity),
            child: isVisable
                ? acitivity == Activities.incoming
                    ? const IncommingCall()
                    : acitivity == Activities.calling
                        ? const InACall()
                        : acitivity == Activities.message
                            ? const Message()
                            : const SizedBox.shrink()
                : const SizedBox.shrink(),
          ),
        ),
      );
    });
  }

  void initController() {
    activityController = AnimationController(
        vsync: this, duration: duration300, reverseDuration: duration300);
    activityAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: activityController, curve: Curves.easeInOutBack));
  }

  void disposeController() {
    activityController.dispose();
  }
}
