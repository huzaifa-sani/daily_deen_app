import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/extensions/extension.dart';
import '../controller/tasbi_controller.dart';
import '../widgets/dhikr_selector.dart';
import '../widgets/tasbi_bottom_controls.dart';
import '../widgets/tasbi_counter_card.dart';

class TasbiScreen extends GetView<TasbiController> {
  const TasbiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldGrey,
      body: SafeArea(
        child: Column(
          children: [
            20.height,
            const DhikrSelector(),
            20.height,
            const Expanded(child: TasbiCounterCard()),
            30.height,
            const TasbiBottomControls(),
            30.height,
          ],
        ),
      ),
    );
  }
}
