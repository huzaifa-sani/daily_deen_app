import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled/utils/extensions/extension.dart';
import '../../../../component/common_App_Bar/Common_App_Bar.dart';
import '../../../../../../utils/constants/app_string.dart';
import '../../../profile/presentation/widgets/common_Settings_tile.dart';

class AccountSetting extends StatelessWidget {
   AccountSetting({super.key});


  final TextEditingController issueTitleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App bar
      appBar: const CommonAppBar(
        title: AppString.accountSetting,
        showBackButton: true,
      ),

      /// Body
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CommonSettingsTile(
              icon: Icons.person_outline,
              title: AppString.personalInformation,
              subtitle: AppString.viewAndUpdateYourPersonalDetails,
              onTap: () => Get.toNamed('/personal-information'),
            ),

            20.height,

            CommonSettingsTile(
              icon: Icons.delete_outline,
              iconColor: Colors.red,
              titleColor: Colors.red,
              title: AppString.deleteAccount,
              subtitle: AppString.permanentlyDeleteYourAccountAndAssociatedData,
              onTap: () => Get.toNamed('/delete-account'),
            ),

          ],
        ),
      ),
    );
  }
}