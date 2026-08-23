import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/component/common_App_Bar/Common_App_Bar.dart';
import 'package:untitled/utils/extensions/extension.dart';
import '../controller/language_Controller.dart';
import '../widgets/common_Language_tile.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageController controller = Get.put(LanguageController());

    return Scaffold(
      appBar: const CommonAppBar(title: "Language", showBackButton: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Obx(
          () => Column(
            children: [
              10.height,
              CommonLanguageTile(
                flagAsset: 'assets/flags/france.png',
                title: 'Français',
                subtitle: 'French (Default)',
                isSelected: controller.selectedLanguage.value == 'fr',
                onTap: () => controller.selectLanguage('fr'),
              ),
              CommonLanguageTile(
                flagAsset: 'assets/flags/usa.png',
                title: 'English',
                subtitle: 'English (US)',
                isSelected: controller.selectedLanguage.value == 'en',
                onTap: () => controller.selectLanguage('en'),
              ),
              CommonLanguageTile(
                flagAsset: 'assets/flags/saudi.png',
                title: 'العربية',
                subtitle: 'Arabic',
                isSelected: controller.selectedLanguage.value == 'ar',
                onTap: () => controller.selectLanguage('ar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

