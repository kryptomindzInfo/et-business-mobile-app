import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/business_type_widget.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_textstyle.dart';
import '../../../navigation/navigation.dart';
import '../common_widgets/primary_button.dart';
import 'signup_create_passcode_screen.dart';
import 'signup_widgets/custom_radio_button_widget.dart';

class SignUpRoleInTheCompanyScreen extends ConsumerWidget {
  static const String routeName = "role_in_the_company";

  const SignUpRoleInTheCompanyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      body: BackgroundImageWidget(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('role_in_the_company', context),
                imageicon: AppAssets.arrowLeft,
              ),
              20.spaceY,
              SizedBox(
                height: 600.h,
                child: ListView.builder(
                    itemCount: companyRoles.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: CustomRadioButtonWidget(
                                isSelected: index ==
                                    ref.watch(signUpStateProvider).selectedRole,
                                onTap: () => ref
                                    .read(signUpStateProvider)
                                    .changeRole(index),
                              ),
                            ),
                            8.spaceX,
                            BusinessTypeWidget(
                              image: companyRoles[index]['image'],
                              //  AppAssets.companyIcon,
                              title: getTranslated(
                                  companyRoles[index]['title'], context),
                              // getTranslated('company', context),
                              description:
                                  // getTranslated('company', context),
                                  getTranslated(
                                      companyRoles[index]['subtitle'], context),
                              onPressed: () => ref
                                  .read(signUpStateProvider)
                                  .changeRole(index),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return Padding(
          padding: EdgeInsets.only(bottom: keyboardHeight),
          child: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Center(
              child: SizedBox(
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
                    Navigation.pushNamed(SignUpCreatePassCodeScreen.routeName);
                  },
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
