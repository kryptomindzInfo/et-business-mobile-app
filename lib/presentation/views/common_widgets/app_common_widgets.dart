import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BackgroundImageWidget extends ConsumerWidget {
  final Widget? child;
  const BackgroundImageWidget({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
            color:context.theme.colorTheme.backgroundColor,

        // height: double.infinity,
        // width: double.infinity,
        // decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage(
            //       AppAssets.backgroundImage), // Your background image path
            //   fit: BoxFit.cover,
            // ),
            // ),
        child: child);
  }
}
