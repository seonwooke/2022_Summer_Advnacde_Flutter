import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyFollowButton extends StatelessWidget {
  final void Function()? onTap;

  const MyFollowButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("clicked"); // 나중에 onTap으로 변경
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return Get.theme.colorScheme.outline;
            }
            return Get.theme.colorScheme.primary;
          }),
          minimumSize: MaterialStateProperty.all(Size(187.w, 56.h)),
          textStyle: MaterialStateProperty.all(AppTextStyle.buttonText.copyWith(color: Get.theme.colorScheme.tertiary)),
          foregroundColor: MaterialStateProperty.all(Get.theme.colorScheme.onPrimary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64.0.r),
              ))
      ),
      child: Text(
        "팔로우 하기",
      ),
    );
  }
}
