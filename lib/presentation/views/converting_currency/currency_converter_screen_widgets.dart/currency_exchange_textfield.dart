import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyExchangeTextfield extends ConsumerWidget {
  const CurrencyExchangeTextfield({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 82,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(28)),
      child: const TextField(
        decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 15, top: 28)),
      ),
    );
  }
}
