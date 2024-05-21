import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class MainCardOption extends ConsumerWidget {
  final String? image;
  final String? title;
  final VoidCallback? onpress;
  const MainCardOption({super.key, this.image, this.title, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Column(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.theme.colorTheme.greenToTeal,
              border: Border.all(color: context.theme.colorTheme.borderColor),
              image: DecorationImage(
                image: AssetImage(image!),
                scale: 2,
              ),
            ),
            // child: Center(
            //   child: Image.asset(image!),
            // ),
          ),
          5.spaceY,
          Text(
            title!,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: context.theme.colorTheme.normalTextColor),
          )
        ],
      ),
    );
  }
}
