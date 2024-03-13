import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardsWidgets extends ConsumerWidget {
  const CardsWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 352,
      margin: EdgeInsets.only(left: 20, right: 20),
    );
  }
}
