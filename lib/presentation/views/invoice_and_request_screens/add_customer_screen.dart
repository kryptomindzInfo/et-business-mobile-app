import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/textfield_black_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../sending_currency_screens/sending_currency_widgets/add_counter_party_widget.dart';
import 'add_new_customer_screen.dart';

class AddCustomerScreen extends ConsumerWidget {
  static const String routeName = "ADD_CUSTOMER";

  const AddCustomerScreen({super.key});

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
                title: getTranslated('add_customer', context),
                imageicon: AppAssets.arrowLeft,
                trailingImage: AppAssets.addIconBold,
                rightPadding: 0,
              ),
              32.spaceY,
              TextFieldBlackWidget(
                hintText: getTranslated('search', context),
                onChanged: (value) {},
              ),
              54.spaceY,
              Center(
                child: Text(
                  getTranslated('cant_find_who_you_are_looking_for', context),
                  style: AppTextstyle.headingTextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              18.spaceY,
              AddCounterPartyWidget(
                title: 'add_new_customer',
                onTap: () {
                  Navigation.pushNamed(AddNewCustomerScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
