import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyMiddleTitle extends StatelessWidget {
  final String text;

  const MyMiddleTitle({
    Key? key,
    required this.text,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.headline.copyWith(color: Get.theme.colorScheme.tertiary),
    );
  }
}
