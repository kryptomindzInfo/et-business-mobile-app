import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePicWidget extends ConsumerWidget {
  final String? image;
  const ProfilePicWidget({super.key, this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(9),
          image: DecorationImage(image: AssetImage(image!)),
          border: Border.all(color: Colors.white),
          shape: BoxShape.circle),
    );
  }
}
