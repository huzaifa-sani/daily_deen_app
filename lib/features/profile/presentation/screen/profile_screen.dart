import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled/component/common_App_Bar/Common_App_Bar.dart';
import 'package:untitled/config/route/app_routes.dart';
import 'package:untitled/utils/extensions/extension.dart';
import '../../../../utils/constants/app_string.dart';
import '../widgets/common_Settings_tile.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CommonAppBar(
          title: AppString.profile,
          showBackButton: true
      ),

      body: Column(

        children: [


          10.height,

          CommonSettingsTile(
            icon: Icons.language,
            title: AppString.name,
            subtitle: AppString.gmail,
            onTap: () => Get.toNamed('/language'),
          ),

          25.height,

          CommonSettingsTile(
            icon: Icons.language,
            title: AppString.language,
            subtitle: AppString.chooseYourPreferredLanguage,
            onTap: () => Get.toNamed(AppRoutes.language),
          ),


          15.height,

          CommonSettingsTile(
            icon: Icons.person_outline,
            title: AppString.accountSetting,
            subtitle: AppString.manageYourAccountInformation,
            onTap: () => Get.toNamed(AppRoutes.account_Setting),
          ),

          15.height,

          CommonSettingsTile(
            icon: Icons.support_agent,
            title: AppString.contactSupport,
            subtitle: AppString.getQuickAssistanceFromOurSupportTeam,
            onTap: () => Get.toNamed(AppRoutes.contact_support),
          ),

          15.height,


          CommonSettingsTile(
            icon: Icons.lock_outline,
            title: AppString.passwordChange,
            subtitle: AppString.changeYourPasswordAndKeepYourAccountSafe,
            onTap: () => Get.toNamed(AppRoutes.contact_support),
          ),

          15.height,

          CommonSettingsTile(
            icon: Icons.description_outlined,
            title: AppString.termsAndConditions,
            subtitle: AppString.viewOurTermsPoliciesAndServiceGuidelines,
            onTap: () => Get.toNamed(AppRoutes.termsOfServices),
          ),

          15.height,

          CommonSettingsTile(
            icon: Icons.privacy_tip_outlined,
            title: AppString.privacyPolicy,
            subtitle: AppString.learnHowWeCollectUseAndProtectYourInformation,
            onTap: () => Get.toNamed(AppRoutes.privacyPolicy),
          ),

          15.height,

        ],

      ),


    );
  }
}
