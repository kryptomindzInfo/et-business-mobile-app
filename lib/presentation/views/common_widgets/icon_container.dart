import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconContainer extends ConsumerWidget {
  final String? image;
  final Color? bgColor;
  const IconContainer({super.key, this.image, this.bgColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 38,
      width: 38,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor ?? context.theme.colorTheme.iconBgColor,
          image: DecorationImage(image: AssetImage(image!), scale: 2)),
    );
  }
}
