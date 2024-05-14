import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/profile_pic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeaderIconWithTitle extends ConsumerWidget {
  final String? title;
  final String? description;
  final String? greenDescription;
  final double? fontsize;
  final String? imageicon;
  final EdgeInsetsGeometry? edgeinsets;
  final double? rightPadding;
  final TextStyle? descriptionTextStyle;
  final VoidCallback? onTrailingiconPress;
  final Widget? widget;
  final bool? etBankLogo;
  final bool? profilePicWidget;
  final int? spaceBtw;
  final Widget? trailing;
  const HeaderIconWithTitle(
      {super.key,
      this.title,
      this.description,
      this.greenDescription,
      this.edgeinsets,
      this.imageicon,
      this.fontsize,
      this.rightPadding,
      this.descriptionTextStyle,
      this.onTrailingiconPress,
      this.widget,
      this.etBankLogo,
      this.profilePicWidget,
      this.spaceBtw,
      this.trailing});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(
        //   width: double.infinity,
        //   child: Padding(
        //     padding: edgeinsets != null
        //         ? edgeinsets!
        //         : EdgeInsets.only(top: 54, right: rightPadding ?? 54),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         if (imageicon != null)
        // InkWell(
        //   onTap: () {
        //     Navigation.pop();
        //   },
        //   child: Image.asset(
        //     imageicon!,
        //     width: imageIconWidth ?? 25.12,
        //     height: imageIconHeight ?? 17.94,
        //     color: context.theme.colorTheme.blackAndWhite,
        //   ),
        // ),
        //         if (etBankLogo != null)
        //           Padding(
        //             padding: const EdgeInsets.only(right: 45),
        //             child: Image.asset(
        //               AppAssets.appbarLogo,
        //               height: 40,
        //             ),
        //           ),
        //         if (trailingImage != null && widget == null)
        //           InkWell(
        //             onTap: onTrailingiconPress,
        //             child: Image.asset(
        //               trailingImage!,
        //               height: trailingImageHeight ?? 34,
        //               width: trailingImageWidth ?? 34,
        //             ),
        //           ),
        //         if (widget != null && trailingImage == null)
        //           InkWell(onTap: onTrailingiconPress, child: widget!)
        //       ],
        //     ),
        //   ),
        // ),
        // 20.spaceY,
        if (imageicon != null) 10.spaceY,
        if (imageicon != null)
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigation.pop();
                },
                child: Image.asset(
                  imageicon!,
                  width: 25.12,
                  height: 17.94,
                  color: context.theme.colorTheme.blackAndWhite,
                ),
              ),
            ],
          ),
        if (imageicon != null) 20.spaceY,
        if (title != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title!,
                  style: AppTextstyle.headingTextStyle(
                    color: context.theme.colorTheme.appbarTitleColor,
                    fontSize: fontsize ?? 32,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              if (profilePicWidget == true)
                const ProfilePicWidget(
                  image: AppAssets.profileicon,
                ),
            ],
          ),

        if (spaceBtw != null) spaceBtw!.spaceY, //  spaceBtw.spaceY ?
        if (spaceBtw == null) 0.spaceY,
        description != null
            ? Text(
                description!,
                style: descriptionTextStyle ??
                    AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.headerDescriptionColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      overflow: TextOverflow.clip,
                    ),
              )
            : const SizedBox(),
        if (greenDescription != null)
          Text(
            greenDescription!,
            style: AppTextstyle.bodyTextStyle(
              color: context.theme.colorTheme.yellowGreenColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.clip,
            ),
          )
      ],
    );
  }
}
