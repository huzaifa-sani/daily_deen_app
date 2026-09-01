import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../data/model/dhikr_model.dart';

class TasbiController extends GetxController {
  final RxInt count = 0.obs;
  final RxInt target = 33.obs;
  final RxInt selectedDhikrIndex = 0.obs;
  final RxBool isSoundOn = true.obs;
  final RxBool isHapticOn = true.obs;

  final List<DhikrModel> dhikrList = [
    DhikrModel(
      arabicText: "سُبْحَانَ ٱللَّٰهِ",
      transliteration: "SubhanAllah",
      translation: "Glory be to Allah",
    ),
    DhikrModel(
      arabicText: "ٱلْحَمْدُ لِلَّٰهِ",
      transliteration: "Alhamdulillah",
      translation: "Praise be to Allah",
    ),
    DhikrModel(
      arabicText: "ٱللَّٰهُ أَكْبَرُ",
      transliteration: "Allahu Akbar",
      translation: "Allah is the Greatest",
    ),
    DhikrModel(
      arabicText: "لَا إِلَٰهَ إِلَّا ٱللَّٰهُ",
      transliteration: "La ilaha illa Allah",
      translation: "There is no god but Allah",
    ),
  ];

  DhikrModel get selectedDhikr => dhikrList[selectedDhikrIndex.value];

  double get progress {
    if (target.value <= 0) return 0;
    final value = count.value / target.value;
    return value > 1 ? 1 : value;
  }

  void increment() {
    count.value++;
    if (isHapticOn.value) {
      HapticFeedback.lightImpact();
    }
  }

  void reset() {
    count.value = 0;
  }

  void selectDhikr(int index) {
    selectedDhikrIndex.value = index;
    target.value = selectedDhikr.defaultTarget;
    reset();
  }

  void toggleSound() {
    isSoundOn.value = !isSoundOn.value;
  }

  void toggleHaptic() {
    isHapticOn.value = !isHapticOn.value;
  }
}

class DhikrModel {
}
