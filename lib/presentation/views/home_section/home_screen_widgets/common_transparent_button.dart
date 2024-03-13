import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../resources/localization/language_constrants.dart';

class CommonTransprentButton extends ConsumerWidget {
  final String? title;
  final String? imageIcon;
  const CommonTransprentButton({super.key, this.title, this.imageIcon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 32,
      // width: 117,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: AppColors.tealColor.withOpacity(0.3)),
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: Row(
            children: [
              imageIcon != null
                  ? Image.asset(
                      imageIcon!,
                      height: 15,
                    )
                  : const SizedBox(),
              imageIcon != null ? 8.spaceX : 0.spaceX,
              Text(
                title!,
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
