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
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final double? width;
  final BoxBorder? border;
  const IconContainer(
      {super.key,
      this.image,
      this.bgColor,
      this.scale,
      this.imageColor,
      this.borderRadius,
      this.height,
      this.width,
      this.border});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height ?? 38,
      width: width ?? 38,
      decoration: BoxDecoration(
        shape: borderRadius != null ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: borderRadius,
        color: bgColor ?? context.theme.colorTheme.iconBgColor,
        border: border,

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
