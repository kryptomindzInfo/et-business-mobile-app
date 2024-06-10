import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonIconTitleIconButton extends ConsumerWidget {
  final String? title;
  final VoidCallback? onpress;
  final String? iconImage;
  bool isForwardIcon = true;
  final Color? imageColor;
  CommonIconTitleIconButton(
      {super.key,
      this.title,
      this.onpress,
      this.iconImage,
      required this.isForwardIcon,
      this.imageColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (iconImage != null)
                  IconContainer(
                    // borderRadius: const BorderRadius.all(Radius.circular(12)),
                    image: iconImage!,
                    bgColor: AppColors.tealColor,
                    imageColor: imageColor,
                  ),
                if (iconImage != null) 10.spaceX,
                Text(
                  title!,
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.headerDescriptionColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            isForwardIcon
                ? Icon(
                    Icons.arrow_forward_ios,
                    color: context.theme.colorTheme.headerDescriptionColor,
                    size: 18,
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
