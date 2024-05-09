import 'package:etbank_business_app/presentation/views/common_widgets/company_individual_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountDetailsButtonsWidget extends ConsumerWidget {
  final provider;

  const AccountDetailsButtonsWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CompanyIndividualTabsWidget(provider: provider);
  }
}
