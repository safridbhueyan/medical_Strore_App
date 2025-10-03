import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class VerticalCountTile extends StatelessWidget {
  const VerticalCountTile({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: AppColors.deActiveTextColor.withValues(alpha: 0.3),
          ),
        ),
        color: AppColors.onSurface,
      ),
      height: 145.h,
      width: 50.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          GestureDetector(
            onTap: () {
              //  count.decreament();
            },
            child: Center(
              child: Icon(Icons.remove, color: AppColors.onPrimary),
            ),
          ),
          Spacer(),
          Divider(color: AppColors.deActiveTextColor.withValues(alpha: 0.3)),

          Spacer(),

          Text(
            //  count.count.toString(),
            "2",
            style: style.bodyMedium!.copyWith(color: AppColors.black),
          ),
          Spacer(),
          Divider(color: AppColors.deActiveTextColor.withValues(alpha: 0.3)),
          Spacer(),

          GestureDetector(
            onTap: () {
              //  count.increament();
            },
            child: Center(child: Icon(Icons.add, color: AppColors.onPrimary)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
