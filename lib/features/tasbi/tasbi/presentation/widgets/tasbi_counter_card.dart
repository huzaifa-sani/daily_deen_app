import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/extensions/extension.dart';
import '../controller/tasbi_controller.dart';
import 'common_container.dart';
import 'counter_display.dart';

class TasbiCounterCard extends GetView<TasbiController> {
  const TasbiCounterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: Column(
        children: [
          Obx(
            () => CommonText(
              text: controller.selectedDhikr.arabicText,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: AppColors.black.withValues(alpha: 0.87),
              maxLines: 2,
            ),
          ),
          10.height,
          Obx(
            () => CommonText(
              text: controller.selectedDhikr.transliteration,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.green,
            ),
          ),
          5.height,
          Obx(
            () => Text(
              '“${controller.selectedDhikr.translation}”',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          const Spacer(),
          const CounterDisplay(),
          const Spacer(),
        ],
      ),
    );
  }
}
