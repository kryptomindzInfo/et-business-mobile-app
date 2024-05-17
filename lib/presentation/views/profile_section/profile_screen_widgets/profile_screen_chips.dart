import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class ProfileScreenChips extends ConsumerWidget {
  final String? title;
  final String? icon;
  final VoidCallback? onpress;
  final Color? color;
  final Color? titleColor;
  final Color? imageIconColor;
  const ProfileScreenChips(
      {super.key,
      this.icon,
      this.title,
      this.onpress,
      this.color,
      this.titleColor,
      this.imageIconColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title ?? "",
      imageicon: icon,
      imageIconColor: imageIconColor,
      onpress: onpress,
      color: color,
      titleColor: titleColor,
    );
  }
}
