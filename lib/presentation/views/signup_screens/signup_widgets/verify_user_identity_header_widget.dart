import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';

class VerifyUserIdentityHeaderWidget extends ConsumerWidget {
  final String? title;
  final String? description;
  final String imageicon;
  final EdgeInsetsGeometry? edgeinsets;
  const VerifyUserIdentityHeaderWidget(
      {super.key,
      this.title,
      this.description,
      required this.imageicon,
      this.edgeinsets});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: edgeinsets != null
                  ? edgeinsets!
                  : const EdgeInsets.only(top: 54, right: 54),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  imageicon,
                  width: 25.12,
                  height: 17.94,
                ),
              ),
            ),
          ],
        ),
        150.spaceY,
        title != null
            ? Text(
                title!,
                style: AppTextstyle.headingTextStyle(
                  color: AppColors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.clip,
                ),
              )
            : const SizedBox(),
        description != null
            ? Text(
                description!,
                style: AppTextstyle.bodyTextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.clip,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
