import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/constants/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InfoTextWithIcon extends ConsumerWidget {
  final String imageicon;
  final Color? subtitleColor;
  const InfoTextWithIcon(
      {super.key, required this.imageicon, this.subtitleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              IconContainer(
                image: imageicon,
              ),
              15.spaceX,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "James Fork",
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: context.theme.colorTheme.normalTextColor),
                  ),
                  Text(
                    "Active",
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color:
                            subtitleColor ?? AppColors.grey.withOpacity(0.6)),
                  )
                ],
              ),
            ],
          ),
        ),
        Text(
          "Owner",
          style: AppTextstyle.bodyTextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
