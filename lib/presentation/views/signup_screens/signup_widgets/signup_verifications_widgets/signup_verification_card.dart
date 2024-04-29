import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpVerificationCard extends ConsumerWidget {
  final String? imageIcon;
  final String? cardtitle;
  final String? statusIcon;
  final String? status;
  final VoidCallback? onpress;
  const SignUpVerificationCard(
      {super.key,
      this.imageIcon,
      this.cardtitle,
      this.statusIcon,
      this.status,
      this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        // height: 179,
        // width: 164,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: context.theme.colorTheme.borderColor)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.spaceY,
              Container(
                height: 55,
                // color: Colors.red,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    imageIcon!,
                    scale: 2.10,
                  ),
                ),
              ),
              10.spaceY,
              Text(
                cardtitle!,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: context.theme.colorTheme.normalTextColor,
                    overflow: TextOverflow.clip),
              ),
              if (status!.isNotEmpty) 5.spaceY,
              status!.isNotEmpty
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          statusIcon!,
                          scale: 1.70,
                        ),
                        Text(
                          status!,
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: context.theme.colorTheme.normalTextColor),
                        )
                      ],
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
