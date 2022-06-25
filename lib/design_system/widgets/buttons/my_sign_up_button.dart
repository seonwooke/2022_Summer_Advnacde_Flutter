import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MySignUpButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final void Function()? onTap;

  const MySignUpButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("clicked"); // 나중에 onTap으로 변경
      },
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Get.theme.colorScheme.primary),
        textStyle: MaterialStateProperty.all(AppTextStyle.buttonText.copyWith(color: Get.theme.colorScheme.primary)),
        minimumSize: MaterialStateProperty.all(Size(328.w, 56.h)),
        side: MaterialStateProperty.all(BorderSide(color: Get.theme.colorScheme.onPrimary)),
      ),
      child: Row(
        children: [
          SizedBox(
              width: 86.w,
              child: Center(child: icon)
          ),
          Text(
            text,
          ),
        ],
      )
    );
  }
}
