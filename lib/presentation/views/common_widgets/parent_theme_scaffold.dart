import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/theme_provider.dart';

class ParentThemeScaffold extends ConsumerWidget {
  final Widget child;

  const ParentThemeScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return child;
    // return Scaffold(
    //   backgroundColor: context.theme.colorTheme.backgroundColor,
    //   floatingActionButton: FloatingActionButton(
    //       child: const Icon(Icons.theater_comedy),
    //       onPressed: () {
    //         ref.read(themeProvider.notifier).toggle();
    //       }),
    //   body: child,
    // );
  }
}
