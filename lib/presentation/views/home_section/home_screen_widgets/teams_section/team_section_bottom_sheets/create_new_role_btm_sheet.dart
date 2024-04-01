import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
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
      height: 620,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            HeaderIconWithTitle(
              imageicon: AppAssets.crossicon,
              title: getTranslated("create_new_role", context),
            ),
            70.spaceY,
            TextFieldWidget(
              hintText: getTranslated('new_role_name', context),
              style: const TextStyle(color: AppColors.black),
            ),
            70.spaceY,
            PrimaryButton(
              color: AppColors.continueButtonDisabledColor,
              text: Text(getTranslated("continue", context)),
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                    context: context,
                    builder: (context) => VerifiedBottomSheetWidget(
                          title: Column(
                            children: [],
                          ),
                          description: Text(
                            "Role Created",
                            style: AppTextstyle.headingTextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ));
              },
              minwidth: 280,
            )
          ],
        ),
      ),
    );
  }
}
