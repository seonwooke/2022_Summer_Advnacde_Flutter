import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MySmallTitle extends StatelessWidget {
  final String text;

  const MySmallTitle({
    Key? key,
    required this.text,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.subtitle2.copyWith(color: Get.theme.colorScheme.tertiary),
    );
  }
}
