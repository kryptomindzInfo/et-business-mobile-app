import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'transfer_favourite_profile_widget.dart';

class TransferMainWhiteCard extends ConsumerWidget {
  const TransferMainWhiteCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
                decoration: BoxDecoration(
                  color: context.theme.colorTheme.yellowToGreen,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(70),
                  ),
                ),
                child: Text(
                  "+ Transfer",
                  style: AppTextstyle.headingTextStyle(
                    fontSize: 16,
                    color: context.theme.colorTheme.bottomSheetColor,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: AppColors.baseGreenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Image.asset(
                  AppAssets.arrowRightShort,
                  height: 15,
                  width: 15,
                ),
              ),
            ],
          ),
          44.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Counterparties 1",
                style: AppTextstyle.headingTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: context.theme.colorTheme.whiteColor,
                ),
              ),
              Text(
                "See all",
                style: AppTextstyle.headingTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: context.theme.colorTheme.grassGreen,
                ),
              ),
            ],
          ),
          45.spaceY,
          TransferFavouriteProfileWidget(
              imageIcon: AppAssets.nickle,
              title: "Nickle",
              titleColor: context.theme.colorTheme.grassGreen),
        ],
      ),
    );
  }
}
