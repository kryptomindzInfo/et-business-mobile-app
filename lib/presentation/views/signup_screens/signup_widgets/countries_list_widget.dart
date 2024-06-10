import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_textstyle.dart';
import '../../../../globals/countries_list.dart';

class CountriesListWidget extends ConsumerWidget {
  final Function(int)? onTap;
  final VoidCallback? onpress;
  final Color? color;
  const CountriesListWidget({super.key, this.onTap, this.onpress, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 650.h,
      decoration: BoxDecoration(
        color: color ?? context.theme.colorTheme.bottomSheetColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        // border: const Border(
        //   left: BorderSide(
        //     color: Colors.white,
        //     width: 2,
        //   ),
        //   right: BorderSide(
        //     color: Colors.white,
        //     width: 2,
        //   ),
        //   top: BorderSide(
        //     color: Colors.white,
        //     width: 2,
        //   ),
        //   bottom: BorderSide(
        //     color: Colors.white,
        //     width: 2,
        //   ),
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView.builder(
            itemCount: allCountries.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: onpress ??
                    () {
                      onTap!(index);

                      Navigator.pop(context);
                    },
                child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: AppColors.transparent,
                        child: Text(
                          allCountries[index].flag,
                          style: TextStyle(fontSize: 30),
                        )),
                    title: Text(
                      allCountries[index].name,
                      style: AppTextstyle.bodyTextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: context.theme.colorTheme.whiteColor),
                    )),
              );
            }),
      ),
    );
  }
}
