import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController {
  final GetStorage _box = GetStorage();
  final String _storageKey = 'selected_language';

  RxString selectedLanguage = 'fr'.obs;

  @override
  void onInit() {
    super.onInit();
    // App খোলার সময় আগের saved language load করা
    selectedLanguage.value = _box.read(_storageKey) ?? 'fr';
  }

  void selectLanguage(String langCode) {
    selectedLanguage.value = langCode;
    _box.write(_storageKey, langCode); // save করে রাখা
  }
}