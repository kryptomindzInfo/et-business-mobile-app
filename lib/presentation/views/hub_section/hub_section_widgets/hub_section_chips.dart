import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/chips.dart';

class HubSectionChipe extends ConsumerWidget {
  final String? title;
  final Color? color;
  final VoidCallback? onpress;
  final Color? titleColor;
  const HubSectionChipe(
      {super.key, this.title, this.color, this.onpress, this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Chips(
      title: title,
      titleColor: titleColor ?? AppColors.black,
      color: color,
      onpress: onpress,
    );
  }
}
