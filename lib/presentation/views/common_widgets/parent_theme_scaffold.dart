import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/theme_provider.dart';

class ParentThemeScaffold extends ConsumerWidget {
  final Widget? child;

  const ParentThemeScaffold({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.theater_comedy),
          onPressed: () {
            ref.read(themeProvider.notifier).toggle();
          }),
      body: child,
    );
  }
}
