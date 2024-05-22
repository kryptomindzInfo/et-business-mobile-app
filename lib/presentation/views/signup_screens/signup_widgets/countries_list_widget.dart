import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_textstyle.dart';
import '../../../../globals/countries_list.dart';

class CountriesListWidget extends ConsumerWidget {
  final Function(int)? onTap;
  final VoidCallback? onpress;
  const CountriesListWidget({super.key, this.onTap, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 650.h,
      decoration: BoxDecoration(
        color: context.theme.colorTheme.bottomSheetColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
        border: const Border(
          left: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          right: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          top: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          bottom: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 20, 20, 0),
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
                    leading:
                        CircleAvatar(child: Text(allCountries[index].flag)),
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
