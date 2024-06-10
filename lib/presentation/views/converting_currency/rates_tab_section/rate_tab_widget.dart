import 'package:etbank_business_app/extensions/build_context.dart';
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
          backgroundColor: context.theme.colorTheme.bottomSheetColor,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return BottomSheetWidet(
              onChanged: (value) {},
              onCancelTap: () {
                Navigator.pop(context);
              },
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
                    // backgroundColor: context.theme.colorTheme.bottomSheetColor,
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
