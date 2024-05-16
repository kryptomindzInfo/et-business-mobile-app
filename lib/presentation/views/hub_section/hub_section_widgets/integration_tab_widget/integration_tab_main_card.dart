import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IntegrationTabMainCard extends ConsumerWidget {
  final VoidCallback? onpress;
  final String title;
  const IntegrationTabMainCard({super.key, this.onpress, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 235,
        width: double.infinity,
        // margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.grassGreen),
            borderRadius: BorderRadius.circular(28)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                title,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
