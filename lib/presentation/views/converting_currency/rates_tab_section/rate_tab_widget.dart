import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/add_currency_pair_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../signup_screens/signup_widgets/bottom_sheet_widget.dart';
import '../../signup_screens/signup_widgets/countries_list_widget.dart';
import '../currency_converter_screen_widgets.dart/adding_currency_pair_container.dart';

class RatesTabWidget extends ConsumerWidget {
  const RatesTabWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AddCurrencyPairWidget(
      onpress: () {
        showModalBottomSheet(
          backgroundColor: AppColors.black,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return BottomSheetWidet(
              onChanged: (value) {},
              onCancelTap: () {},
              bottomNavigationBody: CountriesListWidget(
                // onTap: (x) {
                //   // ref.read(sendingCurrencyProvider).setSelectedCountry(x);
                // },
                onpress: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: AppColors.transparent,
                    builder: (context) {
                      return const AddingCurrencyPairContainer();
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
