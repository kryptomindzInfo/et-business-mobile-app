import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../resources/localization/language_constrants.dart';
import '../../common_widgets/header_icon_with_text.dart';

class ImageScreenWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final List<Widget> buttons;
  const ImageScreenWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.buttons,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              HeaderIconWithTitle(
                title: getTranslated(title, context),
                description: getTranslated(subtitle, context),
                imageicon: AppAssets.arrowLeft,
              ),
              57.spaceY,
              Image.asset(
                image,
                height: 306.h,
                width: 306.w,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                height: 150.h,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: buttons,
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
