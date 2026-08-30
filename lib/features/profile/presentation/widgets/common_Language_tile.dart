import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_colors.dart';

class CommonLanguageTile extends StatelessWidget {

  const CommonLanguageTile({
    super.key,
    required this.flagAsset,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    this.onTap,
    this.titleColor,
    this.selectedColor = AppColors.primaryColor,
    this.backgroundColor = AppColors.white,
    this.borderRadius = 16,
    this.margin,
  });

  final String flagAsset;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback? onTap;
  final Color? titleColor;
  final Color selectedColor;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius.r),
      child: Container(
        margin: margin ?? EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius.r),
          border: Border.all(
            color: isSelected
                ? selectedColor
                : Colors.grey.withValues(alpha: 0.15),
            width: isSelected ? 1.5 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22.r,
              backgroundColor: Colors.grey.withValues(alpha: 0.1),
              backgroundImage: AssetImage(flagAsset),
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: title,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: isSelected
                        ? selectedColor
                        : (titleColor ?? AppColors.black),
                  ),
                  SizedBox(height: 2.h),
                  CommonText(
                    text: subtitle,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textFiledColor,
                  ),
                ],
              ),
            ),
            _buildTrailingIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildTrailingIndicator() {
    return Container(
      width: 28.w,
      height: 28.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? selectedColor : Colors.transparent,
        border: Border.all(
          color: isSelected
              ? selectedColor
              : Colors.grey.withValues(alpha: 0.3),
          width: 1.5,
        ),
      ),
      child: isSelected
          ? Icon(Icons.check, size: 16.sp, color: AppColors.white)
          : null,
    );
  }
}