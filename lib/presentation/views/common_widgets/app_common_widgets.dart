import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_assets.dart';

class BackgroundImageWidget extends ConsumerWidget {
  final Widget? child;
  BackgroundImageWidget({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                AppAssets.backgroundImage), // Your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: child);
  }
}
