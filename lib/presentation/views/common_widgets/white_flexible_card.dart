import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonWhiteFlexibleCard extends ConsumerWidget {
  final Widget? widget;
  final Color? color;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  const CommonWhiteFlexibleCard(
      {super.key,
      this.widget,
      this.color,
      this.borderRadius,
      this.padding,
      this.border});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 28),
        color: color ?? context.theme.colorTheme.transparentToColor,
        border:
            border ?? Border.all(color: context.theme.colorTheme.borderColor),
      ),
      child: Padding(
        padding: padding ??
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          children: [widget!],
        ),
      ),
    );
  }
}
