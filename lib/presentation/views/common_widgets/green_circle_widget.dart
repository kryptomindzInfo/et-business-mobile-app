import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class GreenCircleWidget extends ConsumerWidget {
  final Widget widget;
  final double? radius;
  const GreenCircleWidget({super.key, required this.widget, this.radius});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      radius: radius ?? 23,
      backgroundColor: context.theme.colorTheme.requestIconBGcolor,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: widget,
      ),
    );
  }
}
