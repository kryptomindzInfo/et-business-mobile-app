import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/common_icon_title_icon_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddDocBottomSheetWidget extends ConsumerWidget {
  const AddDocBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.spaceY,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              getTranslated("add_doc", context),
              style: AppTextstyle.headingTextStyle(
                  color: context.theme.colorTheme.normalTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          20.spaceY,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 98,
              width: 102,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.grey),
              child: Center(
                child: Image.asset(
                  AppAssets.cameraicon,
                  scale: 2,
                ),
              ),
            ),
          ),
          10.spaceY,
          CommonIconTitleIconButton(
            isForwardIcon: false,
            iconImage: AppAssets.galleryicon,
            title: getTranslated("choose_gallery", context),
          ),
          CommonIconTitleIconButton(
            isForwardIcon: false,
            iconImage: AppAssets.docicon,
            title: getTranslated("upload_doc", context),
          )
        ],
      ),
    );
  }
}
