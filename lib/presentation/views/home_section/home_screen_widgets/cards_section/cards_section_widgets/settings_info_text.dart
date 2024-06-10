import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../providers/cards_provider.dart';

class SettingsInfoText extends ConsumerWidget {
  final String? title;
  final String? description;
  final bool isButton;
  final String imageIcon;

  const SettingsInfoText({
    super.key,
    this.title,
    this.description,
    required this.isButton,
    required this.imageIcon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var proRead = ref.read(cardscreenProvider);
    var proWatch = ref.watch(cardscreenProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconContainer(
          height: 34,
          width: 34,
          bgColor: AppColors.tealColor,
          image: imageIcon,
        ),
        16.spaceX,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? '',
                style: AppTextstyle.bodyTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: context.theme.colorTheme.normalTextColor,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      description ?? '',
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: context.theme.colorTheme.normalTextColor,
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  if (isButton)
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: CupertinoSwitch(
                        value: proWatch.expenseReportingBool,
                        onChanged: (value) {
                          proRead.expenseReportingSwitch(value);
                        },
                        activeColor: context.theme.colorTheme.greenToIndigo,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
