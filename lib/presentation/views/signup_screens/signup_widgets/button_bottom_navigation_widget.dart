import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonBottomNavigationWidget extends ConsumerWidget {
  final List<Widget> children;
  final double? height;
  const ButtonBottomNavigationWidget(
      {super.key, this.children = const [], this.height});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
        padding: EdgeInsets.only(bottom: keyboardHeight),
        child: BottomAppBar(
          elevation: 0,
          height: height ?? 90.h,
          color: Colors.transparent,
          child: Center(
            child: Column(
              children: children,
            ),
          ),
        ));
  }
}
