import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_colors.dart';
import 'home_info_card_text.dart';

class InfoCardCommonWidget extends ConsumerWidget {
  const InfoCardCommonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.tealColor,
          border: Border.all(color: AppColors.white)),
      child: Column(
        children: [
          20.spaceY,
          InfoTextWidget(),
          10.spaceY,
          InfoTextWidget(),
          10.spaceY,
          InfoTextWidget()
        ],
      ),
    );
  }
}
