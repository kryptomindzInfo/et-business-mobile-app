import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/sending_currency_widgets/verified_bottom_sheet_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/upload_doc_widgets/review_doc_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReviewScreen extends ConsumerWidget {
  static const String routeName = "review_screen";
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.backgroundColor,
      appBar: const CommonAppBar(
        etBankLogo: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            HeaderIconWithTitle(
              title: getTranslated("review", context),
              description: getTranslated("review_description", context),
            ),
            30.spaceY,
            const ReviewDocWidget(),
            // 250.spaceY,
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 50, right: 30, left: 30),
        child: CommonButton(
          mainButtonColor: context.theme.colorTheme.buttonColor,
          titleColor: context.theme.colorTheme.buttonTitleColor,
          title: getTranslated("confirm", context),
          width: 288,
          height: 48,
          onpress: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return VerifiedBottomSheetWidget(
                    title: Text(
                      getTranslated("success", context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: context.theme.colorTheme.whiteAndBlack),
                    ),
                    description: const Text(""));
              },
            );
          },
        ),
      ),
    );
  }
}
