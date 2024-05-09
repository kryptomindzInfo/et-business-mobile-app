import 'package:etbank_business_app/presentation/views/common_widgets/chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpVerificationChips extends ConsumerWidget {
  final String? title;
  final Color? color;
  final VoidCallback? onpress;
  final Color? titleColor;
  const SignUpVerificationChips(
      {super.key, this.title, this.color, this.onpress, this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Chips(
        title: title,
        color: color,
        onpress: onpress,
        titleColor: titleColor,
      ),
    );
  }
}
