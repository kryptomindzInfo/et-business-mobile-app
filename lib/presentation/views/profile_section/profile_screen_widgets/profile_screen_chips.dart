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
  final EdgeInsetsGeometry? padding;
  final TextStyle? titleStyle;
  final double? height;
  const ProfileScreenChips(
      {super.key,
      this.icon,
      this.title,
      this.onpress,
      this.color,
      this.titleColor,
      this.imageIconColor,
      this.padding,
      this.titleStyle,
      this.height});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      height: height,
      titleStyle: titleStyle,
      padding: padding,
      title: title ?? "",
      imageicon: icon,
      imageIconColor: imageIconColor,
      onpress: onpress,
      color: color,
      titleColor: titleColor,
    );
  }
}
