import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/get_started_whole_container.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/refer_business_main_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/business_details/business_details_widgets/get_more_business_main_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetMoreFromBusinessScreen extends ConsumerWidget {
  static const String routeName = "get_more_from_business_screen";
  const GetMoreFromBusinessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.backgroundColor,
      appBar: CommonAppBar(
        etBankLogo: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [40.spaceY, GetMoreBusinessMainCard()],
        ),
      ),
    );
  }
}
