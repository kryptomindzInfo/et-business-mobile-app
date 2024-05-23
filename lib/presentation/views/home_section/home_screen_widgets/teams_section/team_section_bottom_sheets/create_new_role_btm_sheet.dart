import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/verified_bottom_sheet_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../signup_screens/signup_widgets/text_field_widget.dart';

class CreateNewRoleBottomSheet extends ConsumerWidget {
  const CreateNewRoleBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 720,
      decoration: BoxDecoration(
          color: context.theme.colorTheme.bottomSheetColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.spaceY,
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
              color: context.theme.colorTheme.whiteColor,
            ),
            HeaderIconWithTitle(
              // imageicon: AppAssets.crossicon,
              title: getTranslated("create_new_role", context),
            ),
            28.spaceY,
            TextFieldWidget(
              containerColor: context.theme.colorTheme.businessDetailsContainer,
              border: Border.all(
                color: context.theme.colorTheme.transparentToTeal,
              ),
              hintText: getTranslated('new_role_name', context),
              style: const TextStyle(color: AppColors.black),
            ),
            140.spaceY,
            Center(
              child: PrimaryButton(
                color: AppColors.yellowGreen,
                text: Text(
                  getTranslated("continue", context),
                  style: AppTextstyle.bodyTextStyle(color: AppColors.black),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                      backgroundColor:
                          context.theme.colorTheme.bottomSheetColor,
                      context: context,
                      builder: (context) => VerifiedBottomSheetWidget(
                            title: const Column(
                              children: [],
                            ),
                            description: Text(
                              "Role Created",
                              style: AppTextstyle.headingTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: context.theme.colorTheme.whiteColor),
                            ),
                          ));
                },
                minwidth: 280,
              ),
            )
          ],
        ),
      ),
    );
  }
}
