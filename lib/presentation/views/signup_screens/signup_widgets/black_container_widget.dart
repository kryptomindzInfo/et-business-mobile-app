import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlackContainerWidget extends ConsumerWidget {
  final Widget child;
  final Color? color;
  const BlackContainerWidget({super.key, required this.child, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? context.theme.colorTheme.businessDetailsContainer,
          borderRadius: BorderRadius.circular(32)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
