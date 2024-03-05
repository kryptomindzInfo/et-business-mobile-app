import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_assets.dart';

List homeScreenOptions = ["Dashboard", "Cards", "Team"];

class HomeScreenHeader extends ConsumerWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image:
                    DecorationImage(image: AssetImage(AppAssets.profileicon)),
                border: Border.all(color: Colors.white)),
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  AppAssets.charticon,
                  height: 25,
                ),
                20.spaceX,
                Image.asset(
                  AppAssets.notificationicon,
                  height: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreenSearchTextfield extends ConsumerWidget {
  const HomeScreenSearchTextfield({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.mateBlackColor),
      child: TextField(
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: AppColors.greywhite.withOpacity(0.5),
                size: 18,
              ),
            ),
            hintText: "Search",
            hintStyle: AppTextstyle.bodyTextStyle(
              color: AppColors.greywhite.withOpacity(0.5),
            )),
      ),
    );
  }
}

class HomeScreenOptionsWidget extends ConsumerWidget {
  const HomeScreenOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView.builder(
        // itemExtent: 120,
        scrollDirection: Axis.horizontal,
        itemCount: homeScreenOptions.length,
        itemBuilder: (context, index) => Chips(homeScreenOptions[index]),
      ),
    );
  }
}

class Chips extends ConsumerWidget {
  final String title;
  const Chips(this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FittedBox(
        child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.mateBlackColor),
        child: Row(children: [
          // Container(
          //   height: 22,
          //   width: 22,
          //   child: CachedNetworkImage(
          //     memCacheWidth: 45,
          //     memCacheHeight: 60,
          //     maxHeightDiskCache: 60,
          //     maxWidthDiskCache: 45,
          //     imageUrl: AppApiPaths.imagebaseurl + e.icon,
          //     fit: BoxFit.contain,
          //   ),
          // ),
          // Icon(e['name'], size: 15),
          // 5.spaceX,
          Text(title,
              style: AppTextstyle.bodyTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.white))
        ]),
      ),
    ));
  }
}

class HomeMainCard extends ConsumerWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 196,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.primaryColor),
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "£1",
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 48, fontWeight: FontWeight.w700),
                        ),
                        Image.asset(
                          AppAssets.dropdownicon,
                          height: 22,
                        )
                      ],
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.headingTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mateBlackColor.withOpacity(0.4)),
                    )
                  ],
                ),
                Image.asset(
                  AppAssets.ukflag,
                  height: 45,
                )
              ],
            ),
            20.spaceY,
            Container(
              margin: EdgeInsets.only(left: 35, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainCardOption(AppAssets.sendicon, "Send"),
                  MainCardOption(AppAssets.requesticon, "Request"),
                  MainCardOption(AppAssets.moreicon, "More")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainCardOption extends ConsumerWidget {
  final String image;
  final String title;
  const MainCardOption(this.image, this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.mateBlackColor.withOpacity(0.4)),
          child: Center(
            child: Image.asset(image),
          ),
        ),
        Text(
          title,
          style: AppTextstyle.bodyTextStyle(
              fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

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

class InfoTextWidget extends ConsumerWidget {
  const InfoTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.transactioninfoicon,
                  height: 34,
                ),
                Column(
                  children: [
                    Text(
                      "Exchanged to USD",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12,
                          color: AppColors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "-£1",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "+\$1.36",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    color: AppColors.white.withOpacity(0.4),
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
