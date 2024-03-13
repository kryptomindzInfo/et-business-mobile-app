import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlackContainerWidget extends ConsumerWidget {
  final Widget child;
  const BlackContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(32)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
