import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class PlansBottomSheetInfoText extends ConsumerWidget {
  final String imageicon;
  final String title;
  final String subtitle;
  const PlansBottomSheetInfoText(
      {super.key,
      required this.imageicon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconContainer(
            image: imageicon,
          ),
          Column(
            children: [
              SizedBox(
                width: 210,
                child: Text(
                  title,
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 14,
                      color: AppColors.white,
                      fontWeight: FontWeight.w600),
                  overflow: TextOverflow.clip,
                ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  subtitle,
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 12,
                      color: AppColors.white.withOpacity(0.4),
                      fontWeight: FontWeight.w400),
                  overflow: TextOverflow.clip,
                  // overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
