import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_describe_business_activity_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/black_container_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/static_data/signup_screen_static_data.dart';
import 'signup_widgets/category_widget.dart';
import 'signup_widgets/textfield_black_widget.dart';

class SignUpSubCategoryScreen extends ConsumerWidget {
  static const String routeName = "signup_sub_category";

  const SignUpSubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('sub_category_title', context),
                description: getTranslated('sub_category_subtitle', context),
                imageicon: AppAssets.arrowLeft,
              ),
              8.spaceY,
              Text(
                getTranslated('choose_the_most_suitable_subcategory', context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.grey, fontSize: 16.sp),
              ),
              27.spaceY,
              TextFieldBlackWidget(
                onChanged: (value) {},
              ),
              16.spaceY,
              Expanded(
                child: BlackContainerWidget(
                    child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigation.pushNamed(
                                  SignUpDescribeBusinessActivityScreen
                                      .routeName);
                            },
                            child: CategoryWidget(
                              title: getTranslated(
                                  subCategories[index]['title'], context),
                            ),
                          );
                        })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
