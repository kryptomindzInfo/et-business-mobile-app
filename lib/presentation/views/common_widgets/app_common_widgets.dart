import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/home_screen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_assets.dart';

class AppMainWidget extends ConsumerWidget {
  final List<Widget> widgets;
  const AppMainWidget(this.widgets, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              AppAssets.backgroundImage), // Your background image path
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: widgets,
        ),
      ),
    );
  }
}

class SeeAllCommonWidget extends ConsumerWidget {
  final String title;
  final bool isSeeAll;
  const SeeAllCommonWidget(this.title, this.isSeeAll, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextstyle.bodyTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.white),
        ),
        isSeeAll
            ? Text(
                "See All",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColor),
              )
            : const SizedBox()
      ],
    );
  }
}
