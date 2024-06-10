import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/home_section/notification_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../resources/localization/language_constrants.dart';
import '../signup_screens/signup_widgets/textfield_black_widget.dart';
import 'home_screen_widgets/home_Screen_textfields.dart';
import 'home_screen_widgets/home_screen_header.dart';
import 'home_screen_widgets/home_screen_options_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = "home_screen";
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ParentThemeScaffold(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Column(children: [
            60.spaceY,
            HomeScreenHeader(
              onpress: () {
                Navigation.pushNamed(ProfileScreen.routeName);
              },
              onNotificationPress: () {
                Navigation.pushNamed(NotificationScreen.routeName);
              },
            ),
            20.spaceY,
            TextFieldBlackWidget(
              hintText: getTranslated('search', context),
              onChanged: (value) {},
            ),
            // HomeScreenSearchTextfield(
            //   color: context.theme.colorTheme.businessDetailsContainer,
            //   // titleColor: AppColors.iconGreyColor,
            // ),
            15.spaceY,
            const HomeScreenOptionsWidget(),
          ]),
        ),
      ),
    );
  }
}
