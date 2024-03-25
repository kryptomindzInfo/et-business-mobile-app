import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class HeaderIconWithTitle extends ConsumerWidget {
  final String? title;
  final String? description;
  final String imageicon;
  final double? imageIconHeight;
  final double? imageIconWidth;

  final EdgeInsetsGeometry? edgeinsets;
  final String? trailingImage;
  final double? trailingImageHeight;
  final double? trailingImageWidth;
  final double? rightPadding;
  final TextStyle? descriptionTextStyle;
  const HeaderIconWithTitle(
      {super.key,
      this.title,
      this.description,
      required this.imageicon,
      this.edgeinsets,
      this.trailingImage,
      this.trailingImageHeight,
      this.trailingImageWidth,
      this.rightPadding,
      this.imageIconHeight,
      this.imageIconWidth,
      this.descriptionTextStyle});

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
                  Image.asset(
                    imageicon,
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
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.clip,
                ),
              )
            : const SizedBox(),
        // 10.spaceY,
        description != null
            ? Text(
                description!,
                style: descriptionTextStyle ??
                    AppTextstyle.bodyTextStyle(
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
