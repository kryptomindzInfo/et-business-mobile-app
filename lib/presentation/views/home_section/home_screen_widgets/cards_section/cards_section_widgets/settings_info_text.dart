import 'package:etbank_business_app/constants/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../providers/cards_provider.dart';
import '../../../../../../resources/localization/language_constrants.dart';

class SettingsInfoText extends ConsumerWidget {
  final String? title;
  final String? description;
  final bool isButton;
  final String imageIcon;
  const SettingsInfoText(
      {super.key,
      this.title,
      this.description,
      required this.isButton,
      required this.imageIcon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var proRead = ref.read(cardscreenProvider);
    var proWatch = ref.watch(cardscreenProvider);
    return Row(
      children: [
        IconContainer(
          image: imageIcon,
        ),
        // Image.asset(
        //   imageIcon,
        //   height: 35,
        // ),
        10.spaceX,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: context.theme.colorTheme.normalTextColor),
            ),
            Row(
              children: [
                Container(
                  // margin: EdgeInsets.only(right: 10),
                  width: 180,
                  child: Text(
                    description!,
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: context.theme.colorTheme.normalTextColor),
                    overflow: TextOverflow.clip,
                  ),
                ),
                20.spaceX,
                isButton
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Container(
                          height: 20,
                          width: 20,
                          child: CupertinoSwitch(
                            value: proWatch.expenseReportingBool,
                            onChanged: (value) {
                              proRead.expenseReportingSwitch(value);
                            },
                            activeColor: context.theme.colorTheme.indigoToColor,
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ],
        )
      ],
    );
  }
}
