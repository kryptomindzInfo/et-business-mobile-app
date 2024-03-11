import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class ProfileScreenChips extends ConsumerWidget {
  final String? title;
  final String? icon;
  final VoidCallback? onpress;
  final Color? color;
  const ProfileScreenChips(
      {super.key, this.icon, this.title, this.onpress, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title ?? "",
      imageicon: icon,
      onpress: onpress,
      color: color,
    );
  }
}
