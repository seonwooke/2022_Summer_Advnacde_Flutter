import 'package:design_project/design_system/widgets/buttons/my_sign_up_button.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'design_system/theme/app_color.dart';
import 'design_system/theme/app_theme.dart';
import 'design_system/widgets/buttons/my_category_button.dart';
import 'design_system/widgets/buttons/my_follow_button.dart';
import 'design_system/widgets/buttons/my_more_button.dart';
import 'design_system/widgets/text_form_fields/MyOneLineTextFormField.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("hi"),
      ),
      body : SafeArea(
        child : Column(
          children: [
            MyOneLineTextFormField(text: "이메일", icon : Icon(Icons.access_time), textEditingController: null, onTap: null),
          ],
        ),
      ),
    );
  }
}

    