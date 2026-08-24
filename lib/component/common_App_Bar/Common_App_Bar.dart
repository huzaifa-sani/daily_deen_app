import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/constants/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CommonAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.showBackButton = true,
    this.onBackTap,
    this.leadingIcon,
    this.actions,
    this.backgroundColor = AppColors.white,
    this.titleColor = AppColors.black,
    this.elevation = 0,
  });

  final String title;
  final bool centerTitle;
  final bool showBackButton;
  final VoidCallback? onBackTap;
  final Widget? leadingIcon;
  final List<Widget>? actions;
  final Color backgroundColor;
  final Color titleColor;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      scrolledUnderElevation: 0,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      leading: showBackButton
          ? leadingIcon ??
          IconButton(
            onPressed: onBackTap ?? () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20.sp,
              color: titleColor,
            ),
          )
          : null,
      title: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: titleColor,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}