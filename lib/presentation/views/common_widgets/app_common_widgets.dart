import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BackgroundImageWidget extends ConsumerWidget {
  final Widget? child;
  const BackgroundImageWidget({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: context.theme.colorTheme.backgroundColor
            // image: DecorationImage(
            //   image: AssetImage(
            //       AppAssets.backgroundImage), // Your background image path
            //   fit: BoxFit.cover,
            // ),
            ),
        child: child);
  }
}
