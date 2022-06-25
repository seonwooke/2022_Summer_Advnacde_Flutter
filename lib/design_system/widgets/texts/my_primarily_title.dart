import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyPrimarilyTitle extends StatelessWidget {
  final String text;

  const MyPrimarilyTitle({
    Key? key,
    required this.text,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.headline.copyWith(color: Get.theme.colorScheme.primary),
    );
  }
}
