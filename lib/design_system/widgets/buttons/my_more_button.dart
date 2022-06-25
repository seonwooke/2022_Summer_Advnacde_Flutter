import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyMoreButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyMoreButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Clicked");
      },
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyle.caption.copyWith(color: Get.theme.colorScheme.outline)
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 8.sp,
          ),
        ],
      ),
    );
  }
}
