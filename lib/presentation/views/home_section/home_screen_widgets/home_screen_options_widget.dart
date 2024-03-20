import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/providers/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_chips.dart';

class HomeScreenOptionsWidget extends ConsumerWidget {
  const HomeScreenOptionsWidget({super.key});
  // List<Widget> homeOption = [homewidget, card, team];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ref.read(homescreenProvider).homeScreenOptions.map((e) {
              int index =
                  ref.read(homescreenProvider).homeScreenOptions.indexOf(e);
              return HomeChips(
                title: e["title"],
                color: ref.read(homescreenProvider).selectedHomeScreenOption ==
                        index
                    ? AppColors.tealColor
                    : Colors.black,
                onpress: () {
                  ref.watch(homescreenProvider).selectedHomeOption(index);
                },
              );
            }).toList(),
          ),
        ),
        20.spaceY,
        Consumer(builder: (context, ref, child) {
          return Container(
              // color: AppColors.black,
              child: ref.read(homescreenProvider).selectedHomeScreenOptionWidget
              // Column(
              //     // height: 445,
              //     children: [

              //       // .elementAt(ref
              //       //     .watch(homescreenProvider)
              //       //     .selectedHomeScreenOption),
              //     ]),
              );
        })
        // homeOption.elementAt(ref.watch(homescreenProvider).selectedHomeOption)
        // Column(
        //   children: [
        //     ref.read(homescreenProvider).homeScreenOptions[
        //         ref.read(homescreenProvider).selectedHomeScreenOption]["widget"]
        //   ],
        // )
        // Container(
        //   height: 40,
        //   width: double.infinity,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: ref.read(homescreenProvider).homeScreenOptions.length,
        //     itemBuilder: (context, index) {
        //       final key = ref.read(homescreenProvider).homeScreenOptions;
        //       // final value = ref.read(homescreenProvider).homeScreenOptions[key];
        //       return HomeChips(
        //         title: key[index]["title"],
        //         color: ref.read(homescreenProvider).selectedHomeScreenOption ==
        //                 index
        //             ? AppColors.tealColor
        //             : Colors.black,
        //         onpress: () {
        //           ref.watch(homescreenProvider).selectedHomeOption(index);
        //         },
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}
