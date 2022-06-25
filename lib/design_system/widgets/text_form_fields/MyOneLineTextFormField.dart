import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';

class MyOneLineTextFormField extends StatelessWidget {
  final String text;
  final Icon? icon;
  final TextEditingController? textEditingController;
  final void Function()? onTap;

  const MyOneLineTextFormField({
    Key? key,
    required this.text,
    required this.icon,
    required this.textEditingController,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.emailAddress,
      style: AppTextStyle.body2.copyWith(color: Get.theme.colorScheme.tertiary),
      decoration: InputDecoration(
        suffixIcon: icon,
        suffixIconColor: Get.theme.colorScheme.outline,
        contentPadding: EdgeInsets.all(0),
        hintText: text + "입력",
        filled: true,
        fillColor: Get.theme.colorScheme.onTertiary,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.colorScheme.outline),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Get.theme.colorScheme.onPrimary),
        ),
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return text + '을 입력하세요.';
        } else if (!value.isEmail) {
          return '다시 입력하세요.';
        } else {
          return null;
        }
      },
    );
  }
}
