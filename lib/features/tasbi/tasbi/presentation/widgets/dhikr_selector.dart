import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../controller/tasbi_controller.dart';

class DhikrSelector extends GetView<TasbiController> {
  const DhikrSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemCount: controller.dhikrList.length,
        separatorBuilder: (_, __) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          return Obx(() {
            final isSelected = controller.selectedDhikrIndex.value == index;
            return GestureDetector(
              onTap: () => controller.selectDhikr(index),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.green : AppColors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected ? AppColors.green : Colors.grey.shade300,
                  ),
                ),
                child: Center(
                  child: CommonText(
                    text: controller.dhikrList[index].transliteration,
                    color: isSelected ? AppColors.white : AppColors.black,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
