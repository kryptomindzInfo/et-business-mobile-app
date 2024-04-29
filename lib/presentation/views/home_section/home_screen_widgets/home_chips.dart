import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class HomeChips extends ConsumerWidget {
  final String? title;
  final Color? color;
  final Color? titleColor;
  final VoidCallback? onpress;
  const HomeChips(
      {super.key, this.title, this.color, this.onpress, this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title,
      color: color,
      onpress: onpress,
      titleColor: titleColor,
    );
  }
}
