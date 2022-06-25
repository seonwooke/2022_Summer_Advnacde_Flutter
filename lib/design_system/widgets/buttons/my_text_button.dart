import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyTextButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  const MyTextButton.later({
    Key? key,
    this.text = "나중에",
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("clicked"); // 나중에 onTap으로 변경
      },
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(AppTextStyle.buttonText.copyWith(color: Get.theme.colorScheme.onPrimary),)
      ),
      child: Text(
        text,
      ),
    );
  }
}
