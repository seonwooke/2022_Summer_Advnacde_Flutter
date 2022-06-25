import 'package:design_project/design_system/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyCategoryButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyCategoryButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("clicked");
      },
      child: Container(
        height: 48.h,
        width: 162.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Get.theme.colorScheme.primary
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.r)
          )
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.buttonS.copyWith(color: Get.theme.colorScheme.primary),
          ),
        ),
      )
    );
  }
}
