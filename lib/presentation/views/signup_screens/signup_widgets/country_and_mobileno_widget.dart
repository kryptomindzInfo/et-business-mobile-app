import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import '../../../../globals/countries_list.dart';
import '../../../../providers/signup_provider.dart';
import '../../../../resources/localization/language_constrants.dart';
import 'countries_list_widget.dart';
import 'country_drop_down_button_widget.dart';

class CountryAndMobileNoWidget extends ConsumerWidget {
  const CountryAndMobileNoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        CountryDropDownButtonWidget(
          title: ref.watch(signUpStateProvider).selectedCountry != ''
              ? ref.watch(signUpStateProvider).selectedCountry!
              : 'Country',
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return CountriesListWidget(
                    onTap: (value) {
                      ref
                          .watch(signUpStateProvider)
                          .setSelectedCountry(allCountries[value].flag);
                    },
                  );
                });
          },
        ),
        14.spaceX,
        Expanded(
          child: TextFieldWidget(
            style: const TextStyle(color: Colors.black),
            controller: ref.read(signUpStateProvider).mobileNoController,
            hintText: getTranslated('mobile_no', context),
            hintStyle: AppTextstyle.bodyTextStyle(
              color: AppColors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            onChanged: (value) {
              ref.read(signUpStateProvider).notify();
            },
          ),
        ),
      ],
    );
  }
}
