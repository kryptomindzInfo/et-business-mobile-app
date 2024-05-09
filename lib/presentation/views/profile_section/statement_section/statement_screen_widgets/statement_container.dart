import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatementContainer extends ConsumerWidget {
  const StatementContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 450,
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(28)),
    );
  }
}
