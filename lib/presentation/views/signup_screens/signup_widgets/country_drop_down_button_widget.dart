import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import '../../../../globals/countries_list.dart';
import '../../../../resources/localization/language_constrants.dart';

class CountryDropDownButtonWidget extends ConsumerWidget {
  final Function(String?) onChanged;
  final String? value;
  const CountryDropDownButtonWidget(
      {super.key, required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: Container(
        height: 48.h,
        width: 80.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InputDecorator(
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(
              left: 4,
              right: 4,
            ),
          ),
          child: SizedBox(
            height: 50.h,
            child: DropdownButton<String>(
              menuMaxHeight: 300,
              isExpanded: true,
              hint: Text(
                getTranslated('country', context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16.sp, color: AppColors.grey),
              ),
              icon: const Visibility(
                visible: false,
                child: Icon(Icons.arrow_back),
              ),
              value: value,
              style: const TextStyle(color: AppColors.white),
              underline: const SizedBox(),
              borderRadius: BorderRadius.circular(4),
              dropdownColor: AppColors.grey,
              items: allCountries.map((Countries country) {
                return DropdownMenuItem<String>(
                  value: country.name,
                  child: Row(
                    children: <Widget>[
                      Text(country.flag),
                      4.spaceX,
                      Text(
                        country.dialCode,
                        style:
                            AppTextstyle.bodyTextStyle(color: AppColors.black),
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
