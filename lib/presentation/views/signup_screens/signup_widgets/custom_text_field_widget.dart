import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class CustomTextFiledWidget extends StatefulWidget {
  final String title;
  final String hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isSuffixClickable;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool enableInteraction;
  final bool obscureText;
  final Color? backgroundColor;
  final Color? borderColor;
  final double padding;
  final TextInputType textInputType;
  final List<TextInputFormatter> inputFormatters;
  final TextEditingController? controller;
  final double height;
  final int maxLines;
  final double titleSize;
  const CustomTextFiledWidget(
      {super.key,
      required this.title,
      required this.hint,
      this.prefixIcon,
      this.suffixIcon,
      this.backgroundColor,
      this.inputFormatters = const [],
      this.borderColor,
      this.padding = 19,
      this.textInputType = TextInputType.name,
      this.onTap,
      this.readOnly = false,
      this.obscureText = false,
      this.enableInteraction = true,
      this.isSuffixClickable = true,
      this.controller,
      this.height = 48,
      this.maxLines = 1,
      this.titleSize = 14});

  @override
  State<CustomTextFiledWidget> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiledWidget> {
  FocusNode fieldNode = FocusNode();
  bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.obscureText;
    fieldNode.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(widget.title,
          style: AppTextstyle.bodyTextStyle(
            fontSize: widget.titleSize,
            color: AppColors.grey,
          )),
      4.spaceY,
      Container(
        height: widget.height,
        decoration: BoxDecoration(
            color: widget.backgroundColor ?? theme.highlightColor,
            border: Border.all(
              color: widget.borderColor ?? AppColors.transparent,
            ),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          children: [
            SizedBox(width: widget.padding),
            Flexible(
                child: Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.redAccent,
              ),
              child: TextFormField(
                key: widget.key,
                focusNode: fieldNode,
                controller: widget.controller,
                onTap: widget.onTap,
                readOnly: widget.readOnly,
                obscureText: obscureText,
                maxLines: widget.maxLines,
                inputFormatters: widget.inputFormatters,
                enableInteractiveSelection: widget.enableInteraction,
                keyboardType: widget.textInputType,
                style: AppTextstyle.bodyTextStyle(),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hint,
                  hintStyle: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    ]);
  }
}
