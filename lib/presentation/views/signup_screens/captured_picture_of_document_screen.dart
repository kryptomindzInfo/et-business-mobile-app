import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/params/captured_image_of_document_args.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/captured_image_widgets/captured_image_container.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CapturedImageOfDocument extends ConsumerWidget {
  static const String routeName = "captured_image_screen";
  const CapturedImageOfDocument({
    super.key,
    required this.params,
  });

  final CapturedImageOfDocumentArgs params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Scaffold(
        backgroundColor: context.theme.colorTheme.bottomSheetColor,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Column(
          children: [
            30.spaceY,
            Text(
              getTranslated("verify_identity", context),
              style: AppTextstyle.headingTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: context.theme.colorTheme.normalTextColor),
            ),
            70.spaceY,
            CapturedImageContainer(
              imagePath: params.imagePath,
            ),
            90.spaceY,
            CommonButton(
              width: 320,
              height: 48,
              title: getTranslated("license_readable", context),
              titleColor: context.theme.colorTheme.buttonTitleColor,
              mainButtonColor: context.theme.colorTheme.buttonColor,
              onpress: params.onPressLicenceReadable,
            ),
            18.spaceY,
            CommonButton(
              width: 320,
              height: 48,
              title: getTranslated("take_picture", context),
              titleColor: context.theme.colorTheme.buttonTitleColor,
              mainButtonColor: context.theme.colorTheme.whiteToTeal,
              onpress: params.onPressTakeNewPic,
              // () async {
              //   File? image = await showCapture(
              //     context: context,
              //     title: "",
              //     hideIdWidget: true,
              //   );
              //   ref.watch(signUpStateProvider).getCapturedDocImageFront(image!);
              // },
            ),
          ],
        ),
      ),
    );
  }
}
