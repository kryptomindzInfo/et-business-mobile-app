import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/green_circle_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class RequestMoneyWhiteContainerWidget extends ConsumerWidget {
  final Widget? imageicon;
  final String title;
  final String subtitle;
  final VoidCallback? onpress;
  const RequestMoneyWhiteContainerWidget(
      {super.key,
      this.imageicon,
      required this.title,
      required this.subtitle,
      this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imageicon != null)
                // Image.asset(
                //   imageicon ?? '',
                //   height: 35,
                // ),
                GreenCircleWidget(
                  widget: imageicon ?? const Text(''),
                ),
              20.spaceX,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getTranslated(title, context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black),
                    ),
                    Text(
                      getTranslated(subtitle, context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black.withOpacity(0.4),
                          overflow: TextOverflow.clip),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
