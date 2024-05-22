import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/account_details_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/textfield_black_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/app_common_appbar.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../common_widgets/parent_theme_scaffold.dart';
import 'sending_currency_widgets/add_counter_party_widget.dart';

class WhoToPayScreen extends ConsumerWidget {
  static const String routeName = "WHO_TO_PAY";

  const WhoToPayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: CommonAppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  AppAssets.arrowLeftShort,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: Image.asset(
                  AppAssets.addYellow,
                  height: 28,
                  width: 28,
                ),
              ),
            ],
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('who_to_pay_title', context),
                  // imageicon: AppAssets.arrowLeft,
                  widget: Image.asset(
                    AppAssets.addIconBold,
                    height: 34,
                    width: 34,
                  ),
                  // trailingImage: AppAssets.addIconBold,
                  rightPadding: 0,
                ),
                32.spaceY,
                TextFieldBlackWidget(
                  hintText: getTranslated('search', context),
                  onChanged: (value) {},
                ),
                54.spaceY,
                Text(
                  getTranslated('cant_find_who_you_are_looking_for', context),
                  style: AppTextstyle.headingTextStyle(
                    color: context.theme.colorTheme.whiteColor,
                    fontSize: 16,
                  ),
                ),
                18.spaceY,
                AddCounterPartyWidget(
                  borderRadius: 12,
                  title: 'add_new_counterparty',
                  onTap: () {
                    Navigation.pushNamed(AccountDetailsScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
