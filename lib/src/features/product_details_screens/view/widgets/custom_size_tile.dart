// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomSizeTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  void Function()? onTap;
  final bool? isAvailable;
  CustomSizeTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return isAvailable == true
        ? Stack(
            children: [
              Positioned(
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 40.w,
                    height: 36.h,
                    padding: EdgeInsets.all(2.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.onSurface.withValues(alpha: 0.5),
                    ),

                    child: Center(
                      child: Text(
                        title,
                        style: style.labelLarge!.copyWith(
                          color: AppColors.subTextColor.withValues(alpha: 0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(5.r),
                  child: SvgPicture.asset(AppIcons.lineIcon),
                ),
              ),
            ],
          )
        : GestureDetector(
            onTap: onTap,
            child: Container(
              width: 40.w,
              height: 36.h,
              padding: EdgeInsets.all(2.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: isSelected
                    ? AppColors.onPrimary
                    : AppColors.onSurface.withValues(alpha: 0.5),
              ),

              child: Center(
                child: Text(
                  title,
                  style: style.labelLarge!.copyWith(
                    color: isSelected
                        ? AppColors.onSurface
                        : AppColors.subTextColor,
                  ),
                ),
              ),
            ),
          );
  }
}
