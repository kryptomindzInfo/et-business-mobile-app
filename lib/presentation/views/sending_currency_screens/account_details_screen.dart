import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/business_not_listed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_textstyle.dart';
import '../../../providers/sending_currency_provider.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_widgets/user_personal_details_widget.dart';
import 'sending_currency_widgets/account_details_buttons_widget.dart';

class AccountDetailsScreen extends ConsumerWidget {
  static const String routeName = "ACCOUNT_DETAILS";

  const AccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('account_details', context),
                imageicon: AppAssets.arrowLeft,
              ),
              8.spaceY,
              const AccountDetailsButtonsWidget(),
              32.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).countryController,
                title: getTranslated('country', context),
                hint: getTranslated('united_kingdom', context),
                onTap: () {},
              ),
              22.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).currencyController,
                title: getTranslated('currency', context),
                hint: getTranslated('british_pound', context),
                onTap: () {},
              ),
              22.spaceY,
              UserPersonalDetailsWidget(
                readOnly: true,
                enableInteraction: false,
                controller:
                    ref.watch(sendingCurrencyProvider).accountNoController,
                title: getTranslated('account_number', context),
                hint: getTranslated('##############', context),
                onTap: () {},
              ),
              22.spaceY,
              BusinessNotListedWidet(
                title: getTranslated('sort_code', context),
                tilteStyle: AppTextstyle.bodyTextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
