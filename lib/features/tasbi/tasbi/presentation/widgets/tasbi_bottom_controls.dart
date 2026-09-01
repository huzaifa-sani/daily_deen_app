import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../../../../../utils/extensions/extension.dart';
import '../controller/tasbi_controller.dart';

class TasbiBottomControls extends GetView<TasbiController> {
  const TasbiBottomControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Obx(
            () => _ActionButton(
              child: SvgPicture.asset(
                AppImages.tasbi,
                height: 24.sp,
                width: 24.sp,
                colorFilter: ColorFilter.mode(
                  controller.isHapticOn.value
                      ? AppColors.green
                      : AppColors.textFiledColor,
                  BlendMode.srcIn,
                ),
              ),
              onTap: controller.toggleHaptic,
            ),
          ),
          15.width,
          const Expanded(child: _ResetButton()),
          15.width,
          Obx(
            () => _ActionButton(
              child: Icon(
                controller.isSoundOn.value
                    ? Icons.volume_up_rounded
                    : Icons.volume_off_rounded,
                color: AppColors.green,
              ),
              onTap: controller.toggleSound,
            ),
          ),
        ],
      ),
    );
  }
}

class _ResetButton extends GetView<TasbiController> {
  const _ResetButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller.reset,
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [AppColors.green, AppColors.greenLight],
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.green.withValues(alpha: 0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.refresh_rounded, color: AppColors.white),
            8.width,
            const CommonText(
              text: AppString.reset,
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
