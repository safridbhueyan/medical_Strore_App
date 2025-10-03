// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomOrderButton extends StatelessWidget {
  final String title;
  final bool? isCustomModeOn;
  final Widget? child;
  void Function()? onTap;
  CustomOrderButton({
    super.key,
    required this.title,
    this.isCustomModeOn,
    this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return isCustomModeOn == true
        ? child!
        : GestureDetector(
            onTap: () {},
            child: Container(
              height: 44.h,
              width: 77.w,
              padding: EdgeInsets.all(10.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.onPrimary,
              ),
              child: Center(child: Text(title)),
            ),
          );
  }
}
