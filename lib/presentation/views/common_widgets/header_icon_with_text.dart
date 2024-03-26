import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class HeaderIconWithTitle extends ConsumerWidget {
  final String? title;
  final String? description;
  final String? greenDescription;
  final String? imageicon;
  final double? imageIconHeight;
  final double? imageIconWidth;
  final double? fontsize;
  final EdgeInsetsGeometry? edgeinsets;
  final String? trailingImage;
  final double? trailingImageHeight;
  final double? trailingImageWidth;
  final double? rightPadding;
  const HeaderIconWithTitle(
      {super.key,
      this.title,
      this.description,
      this.greenDescription,
      this.imageicon,
      this.edgeinsets,
      this.fontsize,
      this.trailingImage,
      this.trailingImageHeight,
      this.trailingImageWidth,
      this.rightPadding,
      this.imageIconHeight,
      this.imageIconWidth});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: edgeinsets != null
                ? edgeinsets!
                : EdgeInsets.only(top: 54, right: rightPadding ?? 54),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (imageicon != null)
                    Image.asset(
                      imageicon!,
                      width: imageIconWidth ?? 25.12,
                      height: imageIconHeight ?? 17.94,
                    ),
                  if (trailingImage != null)
                    Image.asset(
                      trailingImage!,
                      height: trailingImageHeight ?? 34,
                      width: trailingImageWidth ?? 34,
                    ),
                ],
              ),
            ),
          ),
        ),
        20.spaceY,
        title != null
            ? Text(
                title!,
                style: AppTextstyle.headingTextStyle(
                  color: AppColors.white,
                  fontSize: fontsize ?? 24,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.clip,
                ),
              )
            : const SizedBox(),
        // 10.spaceY,
        if (description != null)
          Text(
            description!,
            style: AppTextstyle.bodyTextStyle(
              color: AppColors.white.withOpacity(0.6),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.clip,
            ),
          ),
        if (greenDescription != null)
          Text(
            greenDescription!,
            style: AppTextstyle.bodyTextStyle(
              color: AppColors.primaryColor,
              fontSize: 21,
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.clip,
            ),
          ),
      ],
    );
  }
}
