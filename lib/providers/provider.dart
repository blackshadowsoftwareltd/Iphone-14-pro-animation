import 'package:flutter_riverpod/flutter_riverpod.dart' show StateProvider;

import '../helper/enum.dart' show Activities;

double w = 0, h = 0;

final currentActivitie = StateProvider<Activities>((ref) => Activities.none);
final visibility = StateProvider<bool>((ref) => false);