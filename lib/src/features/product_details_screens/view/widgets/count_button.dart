import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CountButton extends StatelessWidget {
  const CountButton({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Container(
      width: 126.w,
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.onSurface,
      ),
      child: Row(
        children: [
          Icon(Icons.remove, color: AppColors.onPrimary),
          Spacer(),
          Container(
            height: 41.h,
            width: 1,
            color: AppColors.deActiveTextColor.withValues(alpha: 0.5),
          ),
          Spacer(),

          Text("1", style: style.bodyMedium!.copyWith(color: AppColors.black)),
          Spacer(),

          Container(
            height: 41.h,
            width: 1,
            color: AppColors.deActiveTextColor.withValues(alpha: 0.5),
          ),
          Spacer(),

          Icon(Icons.add, color: AppColors.onPrimary),
        ],
      ),
    );
  }
}
