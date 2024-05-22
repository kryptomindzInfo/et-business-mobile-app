import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../providers/pageview_provider.dart';

class LinearIndicatorWidget extends ConsumerWidget {
  final int? activePageIndex;
  final int? widgetListLength;
  final double? width;
  const LinearIndicatorWidget(
      {super.key, this.activePageIndex, this.widgetListLength, this.width});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.read(pageControllerProvider);
    return Positioned(
      top: 85,
      height: 20.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Row(
          children: List<Widget>.generate(widgetListLength!, (index) {
            return InkWell(
              onTap: () => pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              ),
              child: Container(
                width: width,
                height: 2.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.r),
                  border: Border.all(
                    color:
                        getPageIndicatorColor(context, index, activePageIndex!),
                    width: 1.w,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Color getPageIndicatorColor(BuildContext context, int index, int activePage) {
    return index == activePage
        ? context.theme.colorTheme.greenToTeal
        : AppColors.grey;
  }
}
