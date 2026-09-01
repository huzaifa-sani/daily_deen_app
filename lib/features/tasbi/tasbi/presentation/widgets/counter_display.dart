import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_string.dart';
import '../controller/tasbi_controller.dart';

class CounterDisplay extends GetView<TasbiController> {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.increment,
      child: Obx(() {
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 220.w,
              height: 220.w,
              child: CircularProgressIndicator(
                value: controller.progress,
                strokeWidth: 12.w,
                backgroundColor: Colors.grey.shade200,
                color: AppColors.green,
                strokeCap: StrokeCap.round,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "${controller.count.value}",
                      style: TextStyle(
                        fontSize: 70.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.green,
                      ),
                    ),
                    Text(
                      " /${controller.target.value}",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const CommonText(
                  text: AppString.tapToCount,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.green,
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
