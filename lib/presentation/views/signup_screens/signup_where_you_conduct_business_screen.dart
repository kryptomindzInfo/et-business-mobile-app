import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_directors_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpWhereYouConductBusinessScreen extends ConsumerWidget {
  static const String routeName = "where_you_conduct_business";

  const SignUpWhereYouConductBusinessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: false,
        backgroundColor: AppColors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated(
                      'where_do_you_conduct_business_title', context),
                  description: getTranslated(
                      'where_do_you_conduct_business_subtitle', context),
                  imageicon: AppAssets.arrowLeft,
                ),
                11.spaceY,
                Text(
                  getTranslated('which_countries_should_I_list', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.baseGreenColor),
                ),
                32.spaceY,
                BusinessDetailsWhiteContainerWidet(
                  title: getTranslated('add_countries', context),
                  titleTextColor: AppColors.baseGreenColor,
                ),
                32.spaceY,
                Text(
                  getTranslated('countries', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.white, fontSize: 16.sp),
                ),
                8.spaceY,
                // AccountsCard(),
                BusinessDetailsWhiteContainerWidet(
                  // labelText:
                  //     getTranslated('maximum_single_payment_in_GBP', context),
                  image: AppAssets.australiaRoundImage,
                  title: getTranslated('australia', context),
                  titleTextStyle: AppTextstyle.bodyTextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                  icon: Image.asset(
                    AppAssets.crossIconBlack,
                    height: 24.h,
                    width: 24.w,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: AppColors.primaryColor,
                text: Text(
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SignUpDirectorsScreen.routeName);
                },
              ),
            ),
          ],
        ),
        // Builder(builder: (context) {
        //   final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        //   return Padding(
        //       padding: EdgeInsets.only(bottom: keyboardHeight),
        //       child: BottomAppBar(
        //         elevation: 0,
        //         height: 100.h,
        //         color: Colors.transparent,
        //         child: Center(
        //           child: Column(
        //             children: [
        //               SizedBox(
        //                 height: 48.h,
        //                 width: 327.w,
        //                 child: PrimaryButton(
        //                   color: AppColors.primaryColor,
        //                   text: Text(
        //                     getTranslated('continue', context),
        //                     style: AppTextstyle.bodyTextStyle(
        //                         color: AppColors.black,
        //                         fontSize: 16,
        //                         fontWeight: FontWeight.w500),
        //                   ),
        //                   onPressed: () {
        //                     Navigator.pushNamed(
        //                         context, SignUpDirectorsScreen.routeName);
        //                   },
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ));
        // }),
      ),
    );
  }
}
