import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlackContainerWidget extends ConsumerWidget {
  final Widget child;
  final Color? color;
  final double? borderRadius;
  const BlackContainerWidget(
      {super.key, required this.child, this.color, this.borderRadius});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? context.theme.colorTheme.businessDetailsContainer,
          borderRadius: BorderRadius.circular(borderRadius ?? 32)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
