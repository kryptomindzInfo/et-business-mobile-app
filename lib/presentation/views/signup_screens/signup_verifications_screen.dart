import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/signup_verifications_widgets/signup_verification_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/signup_verifications_widgets/signup_verifications_chips.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/signup_provider.dart';

class SignUpVerificationsScreen extends ConsumerWidget {
  static const String routeName = "SignUp_verification_screen";
  const SignUpVerificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Scaffold(
        backgroundColor: context.theme.colorTheme.backgroundColor,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.spaceY,
              SignUpVerificationChips(
                color: context.theme.colorTheme.activeChipColor,
                title: getTranslated("application", context),
                titleColor: context.theme.colorTheme.buttonTitleColor,
                onpress: () {},
              ),
              20.spaceY,
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 179
                      // childAspectRatio: 1,
                      ),
                  itemCount: ref
                      .watch(signUpStateProvider)
                      .verificationCardData
                      .length,
                  itemBuilder: (context, index) {
                    var data =
                        ref.watch(signUpStateProvider).verificationCardData;
                    return SignUpVerificationCard(
                      cardtitle: getTranslated(data[index]["title"], context),
                      imageIcon: data[index]["icon"],
                      status: getTranslated(data[index]["status"], context),
                      statusIcon: data[index]["statusicon"],
                      onpress: data[index]["ontap"],
                      color: data[index]['color'],
                      imageColor: data[index]['imageColor'] == null
                          ? null
                          : data[index]['imageColor'](context),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
