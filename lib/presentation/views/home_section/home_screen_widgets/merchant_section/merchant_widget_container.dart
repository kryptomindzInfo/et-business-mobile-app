import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MerchantWidgetContainer extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  final String? imageicon;
  // final Color? subtitleColor;
  const MerchantWidgetContainer({
    super.key,
    this.title,
    this.subtitle,
    this.imageicon,
    // this.subtitleColor\
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 179,
      width: 154,
      margin: const EdgeInsets.only(right: 10, bottom: 10),

      // margin: EdgeInsets.only(left: 200),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(
            color: context.theme.colorTheme.borderColor,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10, right: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title ?? "",
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: context.theme.colorTheme.normalTextColor,
                  overflow: TextOverflow.clip),
            ),
            Row(
              children: [
                imageicon!.isNotEmpty
                    ? Image.asset(
                        imageicon!,
                        height: 16,
                      )
                    : const SizedBox(),
                5.spaceX,
                subtitle!.isNotEmpty
                    ? Text(
                        subtitle!,
                        style: AppTextstyle.bodyTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: context.theme.colorTheme.normalTextColor,
                          // color: subtitleColor!
                        ),
                      )
                    : const SizedBox()
              ],
            )
          ],
        ),
      ),
    );
  }
}
