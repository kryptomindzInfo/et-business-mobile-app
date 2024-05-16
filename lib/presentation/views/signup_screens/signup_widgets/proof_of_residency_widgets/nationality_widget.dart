import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../providers/signup_provider.dart';
import '../bottom_sheet_widget.dart';
import '../countries_list_widget.dart';

class NationalityWidget extends ConsumerWidget {
  const NationalityWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          getTranslated("prove_living_in_uk", context),
          style: AppTextstyle.bodyTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: context.theme.colorTheme.headerDescriptionColor),
        ),
        20.spaceY,
        Text(
          getTranslated("nationality", context),
          style: AppTextstyle.bodyTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: context.theme.colorTheme.headerDescriptionColor),
        ),
        2.spaceY,
        Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: context.theme.colorTheme.borderColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  20.spaceX,
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ref.watch(signUpStateProvider).countryOfResidence.flag,
                      style: AppTextstyle.bodyTextStyle(fontSize: 25),
                    ),
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage(ref
                  //       .watch(signUpStateProvider)
                  //       .countryOfResidence
                  //       .flag),
                  // ),
                  20.spaceX,
                  Text(
                    ref.watch(signUpStateProvider).countryOfResidence.name,
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.normalTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: AppColors.black,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheetWidet(
                          onChanged: (value) {},
                          onCancelTap: () {
                            Navigator.pop(context);
                          },
                          bottomNavigationBody: CountriesListWidget(
                            onTap: (index) {
                              ref
                                  .read(signUpStateProvider)
                                  .setcountryOfResidence(index);
                            },
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    getTranslated("change", context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.textGrassGreenColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              // 10.spaceX
            ],
          ),
        )
      ],
    );
  }
}
