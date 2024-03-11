import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfAdressesWidget extends ConsumerWidget {
  const ListOfAdressesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 500,
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getTranslated('address_not_here', context),
                style: AppTextstyle.bodyTextStyle(color: AppColors.blue),
              ),
              12.spaceY,
              SizedBox(
                height: 600.h,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          'Wallwood St, Flat 14, Perkins House, London',
                          style: AppTextstyle.bodyTextStyle(
                            fontSize: 16.sp,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
