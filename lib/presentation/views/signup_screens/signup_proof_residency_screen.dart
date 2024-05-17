import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/proof_of_residency_widgets/nationality_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/proof_of_residency_widgets/select_document_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/signup_provider.dart';

class ProofOfResidencyScreen extends ConsumerStatefulWidget {
  static const String routeName = "residency_proof_screen";
  const ProofOfResidencyScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProofOfResidencyScreenState();
}

class _ProofOfResidencyScreenState
    extends ConsumerState<ProofOfResidencyScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(signUpStateProvider).requestCameraPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.backgroundColor,
      appBar: const CommonAppBar(
        etBankLogo: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            10.spaceY,
            HeaderIconWithTitle(
              title: getTranslated("proof_residency", context),
            ),
            5.spaceY,
            const NationalityWidget(),
            40.spaceY,
            const SelectDocumentWidget()
          ],
        ),
      ),
    );
  }
}
