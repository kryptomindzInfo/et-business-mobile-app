import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_maximum_single_payment_per_month_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/category_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/static_data/signup_screen_static_data.dart';
import 'signup_widgets/black_container_widget.dart';

class SignUpHowManyPaymentsEachMonthScreen extends ConsumerWidget {
  static const String routeName = "how_many_payments";

  const SignUpHowManyPaymentsEachMonthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated(
                    'how_many_payments_will_you_send_each_month_title',
                    context),
                description: getTranslated(
                    'how_many_payments_will_you_send_each_month_subtitle',
                    context),
                imageicon: AppAssets.arrowLeft,
              ),
              36.spaceY,
              BlackContainerWidget(
                child: SizedBox(
                  height: 280.h,
                  child: ListView.builder(
                      itemCount: paymentRanges.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigation.pushNamed(
                                  SignUpMaximumSinglePaymentPerMonthScreen
                                      .routeName);
                            },
                            child: CategoryWidget(title: paymentRanges[index]));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
