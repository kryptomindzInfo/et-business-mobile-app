import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountsCard extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final Widget? widget;
  const AccountsCard(
      {super.key, this.image, this.widget, this.title, this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 71,
      // width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: context.theme.colorTheme.transparentToColor,
          border: Border.all(color: context.theme.colorTheme.borderColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: Row(
              children: [
                Image.asset(
                  image!,
                  height: 32,
                ),
                20.spaceX,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title ?? "",
                      style: AppTextstyle.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                    Text(
                      subtitle ?? "",
                      style: AppTextstyle.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          widget!
        ],
      ),
    );
  }
}
