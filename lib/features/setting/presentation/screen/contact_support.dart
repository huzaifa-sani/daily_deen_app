import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/component/button/common_button.dart';
import 'package:untitled/utils/extensions/extension.dart';

import '../../../../component/common_App_Bar/Common_App_Bar.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_text_field.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_string.dart';

class ContactSupport extends StatelessWidget {
  ContactSupport({super.key});

  final TextEditingController issueTitleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App bar
      appBar: const CommonAppBar(
        title: AppString.contactSupport,
        showBackButton: true,
      ),

      /// Body
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const CommonText(
              text: 'Issue Title',
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),

            8.height,

            CommonTextField(
              controller: issueTitleController,
              hintText: 'Please write your issue',
              borderRadius: 30,
            ),

            20.height,

            const CommonText(
              text: 'Description',
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),

            8.height,

            CommonTextField(
              controller: descriptionController,
              hintText: 'Please write the issue you have faced',
              maxLines: 8,
              paddingVertical: 16,
              borderRadius: 16,
            ),

            20.height,

            const CommonButton(titleText:'Submit',)


          ],
        ),
      ),
    );
  }
}