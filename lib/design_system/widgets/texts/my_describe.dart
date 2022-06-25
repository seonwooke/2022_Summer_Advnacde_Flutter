import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyDescribe extends StatelessWidget {
  final String text;

  const MyDescribe({
    Key? key,
    required this.text,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.body2.copyWith(color: Get.theme.colorScheme.tertiary),
    );
  }
}
