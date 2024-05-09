import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../resources/localization/language_constrants.dart';
import '../../common_widgets/header_icon_with_text.dart';

class ImageScreenWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? image;
  final List<Widget> buttons;
  final bool isLogo;
  final bool? isEmailArrivedText;
  const ImageScreenWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.image,
      required this.buttons,
      required this.isLogo,
      this.isEmailArrivedText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: isLogo,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated(title, context),
                description: getTranslated(subtitle, context),
                // imageicon: AppAssets.arrowLeft,
              ),
              if (isEmailArrivedText != null) 20.spaceY,
              if (isEmailArrivedText != null)
                Text(
                  getTranslated(
                      "${getTranslated("email_hasnt_arrived", context)}00:58.",
                      context),
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.headerDescriptionColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              40.spaceY,
              image != null
                  ? Center(
                      child: Image.asset(
                        image!,
                        scale: 2.50,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          height: 150.h,
          children: [
            Column(
              children: buttons,
            ),
          ],
        ),
      ),
    );
  }
}
