import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../globals/button_color.dart';
import 'signup_widgets/button_widget.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpCheckEmail extends ConsumerWidget {
  static const String routeName = "signup_check_email";

  const SignUpCheckEmail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Image.asset(
            AppAssets.appBg,
            width: 400.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(top: 54, right: 54),
                //       child: InkWell(
                //         onTap: () {
                //           Navigator.pop(context);
                //         },
                //         child: Image.asset(
                //           AppAssets.arrowLeft,
                //           width: 25.12.w,
                //           height: 17.94.h,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // 31.spaceY,
                // Text(
                //   getTranslated('signup_email_title', context),
                //   style: AppTextstyle.headingTextStyle(
                //     color: AppColors.white,
                //     fontSize: 26,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                // 30.spaceY,
              ],
            ),
          ),
        ],
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
                  child: ButtonWidget(
                    color:
                        buttonColor(ref.watch(emailStateProvider).isEmailEmpty),
                    text: Text(
                      getTranslated('continue', context),
                      style: AppTextstyle.bodyTextStyle(
                          color: buttonTextColor(
                              ref.watch(emailStateProvider).isEmailEmpty),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: ref.watch(emailStateProvider).isEmailEmpty
                        ? () {}
                        : () {},
                  ),
                ),
              ),
            ));
      }),
    );
  }
}
