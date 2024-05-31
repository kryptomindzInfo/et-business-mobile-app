import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessTypeWidget extends ConsumerWidget {
  final String image;
  final String title;
  final String? description;
  final VoidCallback? onPressed;
  final String? labelText;
  final bool? arrowForward;
  final EdgeInsetsGeometry? padding;
  const BusinessTypeWidget({
    super.key,
    required this.image,
    required this.title,
    this.description,
    this.onPressed,
    this.labelText,
    this.arrowForward,
    this.padding,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconContainer(
            height: 34,
            width: 34,
            bgColor: AppColors.tealColor,
            image: image,
          ),
          12.spaceX,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 260.w,
                child: Padding(
                  padding: padding ?? const EdgeInsets.all(0),
                  child: Text(
                    title,
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 18.sp,
                        color: context.theme.colorTheme.normalTextColor,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.clip),
                  ),
                ),
              ),
              if ((description ?? '').isNotEmpty)
                SizedBox(
                  width: 230.w,
                  child: Text(
                    description ?? '',
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.headerDescriptionColor,
                        overflow: TextOverflow.clip),
                  ),
                ),
            ],
          ),
          if (arrowForward == true)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: context.theme.colorTheme.whiteColor,
              ),
            ),
        ],
      ),
    );
  }
}
