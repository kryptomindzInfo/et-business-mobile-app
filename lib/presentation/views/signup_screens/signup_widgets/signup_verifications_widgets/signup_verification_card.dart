import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpVerificationCard extends ConsumerWidget {
  final String? imageIcon;
  final String? cardtitle;
  final String? statusIcon;
  final String? status;
  final VoidCallback? onpress;
  final Color? color;
  final Color? imageColor;
  final Color? titleColor;
  final Color? statusIconColor;
  final Color? statusColor;

  const SignUpVerificationCard(
      {super.key,
      this.imageIcon,
      this.cardtitle,
      this.statusIcon,
      this.status,
      this.onpress,
      this.color,
      this.imageColor,
      this.titleColor,
      this.statusIconColor,
      this.statusColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        // height: 179,
        // width: 164,
        decoration: BoxDecoration(
            color: color ?? Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border:
                Border.all(color: context.theme.colorTheme.transparentToTeal)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.spaceY,
              SizedBox(
                height: 55,
                // color: Colors.red,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    imageIcon!,
                    scale: 2.10,
                    color: imageColor,
                    // color: context.theme.colorTheme.whiteColor,
                  ),
                ),
              ),
              10.spaceY,
              Text(
                cardtitle!,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color:
                        titleColor ?? context.theme.colorTheme.normalTextColor,
                    overflow: TextOverflow.clip),
              ),
              if (status!.isNotEmpty) 16.spaceY,
              status!.isNotEmpty
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          statusIcon!,
                          scale: 1.70,
                          color: statusIconColor,
                        ),
                        8.spaceX,
                        Text(
                          status!,
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: statusColor ??
                                  context.theme.colorTheme.normalTextColor),
                        )
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
