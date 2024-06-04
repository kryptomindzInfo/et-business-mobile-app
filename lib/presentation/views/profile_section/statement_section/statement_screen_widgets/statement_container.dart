import 'package:etbank_business_app/extensions/build_context.dart';
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
          color: context.theme.colorTheme.halfWhiteToMonthlyStatementContainer,
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
