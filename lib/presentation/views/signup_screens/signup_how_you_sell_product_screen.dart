import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/static_data/signup_screen_static_data.dart';
import '../../../providers/signup_provider.dart';
import '../common_widgets/app_common_appbar.dart';
import 'signup_widgets/black_container_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/checkbox_widget.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_website_social_ecommerce_link_screen.dart';

class SignUpHowYouSellProductScreen extends ConsumerWidget {
  static const String routeName = "how_you_sell_your_product";

  const SignUpHowYouSellProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated(
                    'how_do_you_sell_your_product_or_service', context),
                // imageicon: AppAssets.arrowLeft,
              ),
              36.spaceY,
              BlackContainerWidget(
                child: SizedBox(
                  height: 280.h,
                  child: ListView.builder(
                      itemCount: howYouSellProductOptions.length,
                      itemBuilder: (context, index) {
                        return Consumer(builder: (context, ref, child) {
                          return CheckBoxWidget(
                            checkBoxValue: ref
                                .watch(signUpStateProvider)
                                .howYouSellProductsOptions
                                .contains(index),
                            title: getTranslated(
                                howYouSellProductOptions[index]['title'],
                                context),
                            onChanged: (value) {
                              ref
                                  .read(signUpStateProvider)
                                  .sethowYouSellProductsOptions(index);
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
                  color: context.theme.colorTheme.buttonColor,
                  text: Text(
                    getTranslated('continue', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigation.pushNamed(
                        SignUpWebsiteSocialEcommerceLinkScreen.routeName);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
