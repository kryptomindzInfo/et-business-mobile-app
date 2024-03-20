import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/static_data/signup_screen_static_data.dart';
import 'signup_category_screen.dart';
import 'signup_widgets/black_container_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/checkbox_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpPrimaryReasonForEtBankScreen extends ConsumerWidget {
  static const String routeName = "primary_reason_for_using_et_bank";

  const SignUpPrimaryReasonForEtBankScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title:
                    getTranslated('primary_reason_for_using_et_bank', context),
                imageicon: AppAssets.arrowLeft,
              ),
              36.spaceY,
              BlackContainerWidget(
                child: SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                      itemCount: reasonsForUsingEtBank.length,
                      itemBuilder: (context, index) {
                        return Consumer(builder: (context, ref, child) {
                          return CheckBoxWidget(
                            checkBoxValue: ref
                                .watch(signUpStateProvider)
                                .selectedReasonsForUsingEtBank
                                .contains(index),
                            title: getTranslated(
                                reasonsForUsingEtBank[index]['title'], context),
                            onChanged: (value) {
                              ref
                                  .read(signUpStateProvider)
                                  .setSelectedReasonForUsingEtBank(index);
                            },
                          );
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                  color: AppColors.baseGreenColor,
                  text: Text(
                    getTranslated('continue', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigation.pushNamed(SignUpCategoryScreen.routeName);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
