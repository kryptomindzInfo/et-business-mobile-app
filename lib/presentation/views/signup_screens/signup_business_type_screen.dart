import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_mobile_num_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/business_type_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_colors.dart';

class SignUpBusinessTypeScreen extends ConsumerWidget {
  static const String routeName = "signup_business_type";

  const SignUpBusinessTypeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('business_type_title', context),
                  // imageicon: AppAssets.arrowLeft,
                  etBankLogo: true,
                ),
                37.spaceY,
                BusinessTypeWidget(
                  image: AppAssets.companyIcon,
                  title: getTranslated('company', context),
                  description: getTranslated('company_desc', context),
                  arrowForward: true,
                  onPressed: () {
                    Navigation.pushNamed(SignUpMobileNoScreen.routeName);
                  },
                ),
                32.spaceY,
                BusinessTypeWidget(
                  image: AppAssets.freelancerIcon,
                  title: getTranslated('freelancer', context),
                  description: getTranslated('freelancer_desc', context),
                  arrowForward: true,
                ),
                32.spaceY,
                BusinessTypeWidget(
                    image: AppAssets.personIcon,
                    title: getTranslated('dont_have_business', context),
                    arrowForward: true,
                    description:
                        getTranslated('dont_have_business_desc', context))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
