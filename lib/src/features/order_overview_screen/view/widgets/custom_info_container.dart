import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomInfoContainer extends StatelessWidget {
  final Widget child;
  const CustomInfoContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.onSurface.withValues(alpha: 0.5),
      ),
      child: child,
    );
  }
}
