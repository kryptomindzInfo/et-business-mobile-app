import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransferMainWhiteCard extends ConsumerWidget {
  const TransferMainWhiteCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      widget: Row(
        children: [
          Column(
            children: [
              Text(
                "+ Transfer",
                style: AppTextstyle.headingTextStyle(
                    fontSize: 34, fontWeight: FontWeight.bold),
              ),
              Text(
                "Counterparties 1",
                style: AppTextstyle.headingTextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          20.spaceX,
          Row(
            children: [
              Image.asset(
                AppAssets.nickle,
                height: 35,
              ),
              8.spaceX,
              Text(
                "Nickle",
                style: AppTextstyle.headingTextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
