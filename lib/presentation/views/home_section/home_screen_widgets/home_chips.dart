import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class HomeChips extends ConsumerWidget {
  final String? title;
  final Color? color;
  final VoidCallback? onpress;
  const HomeChips({super.key, this.title, this.color, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title,
      color: color,
      onpress: onpress,
    );
  }
}
