import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';

class HeaderIconWithTitle extends ConsumerWidget {
  final String? title;
  final String? description;
  const HeaderIconWithTitle({super.key, this.title, this.description});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 54, right: 54),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  AppAssets.arrowLeft,
                  width: 25.12,
                  height: 17.94,
                ),
              ),
            ),
          ],
        ),
        20.spaceY,
        title != null
            ? Text(
                title!,
                style: AppTextstyle.headingTextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            : const SizedBox(),
        // 10.spaceY,
        description != null
            ? Text(
                description!,
                style: AppTextstyle.bodyTextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
