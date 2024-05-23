import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconContainer extends ConsumerWidget {
  final String? image;
  final Color? bgColor;
  final Color? imageColor;
  final double? scale;
  const IconContainer(
      {super.key, this.image, this.bgColor, this.scale, this.imageColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 38,
      width: 38,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bgColor ?? context.theme.colorTheme.iconBgColor,

        // image: DecorationImage(
        //   image: AssetImage(
        //     image!,
        //   ),
        //   scale: scale ?? 2,
        // ),
      ),
      child: Image.asset(
        image!,
        scale: scale ?? 2,
        color: imageColor,
      ),
    );
  }
}
