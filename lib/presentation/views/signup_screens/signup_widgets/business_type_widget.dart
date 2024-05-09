import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessTypeWidget extends ConsumerWidget {
  final String image;
  final String title;
  final String? description;
  final VoidCallback? onPressed;
  final String? labelText;
  final bool? arrowForward;
  const BusinessTypeWidget(
      {super.key,
      required this.image,
      required this.title,
      this.description,
      this.onPressed,
      this.labelText,
      this.arrowForward});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconContainer(
            image: image,
          ),
          16.spaceX,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 260.w,
                child: Text(
                  title,
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 18.sp,
                      color: context.theme.colorTheme.normalTextColor,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.clip),
                ),
              ),
              if (description != null)
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
            Icon(
              Icons.arrow_forward_ios,
              color: context.theme.colorTheme.whiteColor,
            ),
        ],
      ),
    );
  }
}
