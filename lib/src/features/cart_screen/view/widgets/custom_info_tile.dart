import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/constant/images.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/vertical_count_tile.dart';

class CustomInfoTile extends StatelessWidget {
  const CustomInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.onPrimary, width: 1.w),
        borderRadius: BorderRadius.circular(5.r),
        color: AppColors.onSurface.withValues(alpha: 0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 9.w),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10.r),
              child: Image.asset(
                AppImages.diabeticKit,
                width: 86.w,
                height: 102.h,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 11.h, bottom: 11.h, left: 13.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stethoscope",
                  style: style.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                ),
                6.h.verticalSpace,

                Text(
                  "Brand Name",
                  style: style.bodyMedium!.copyWith(
                    fontSize: 13.sp,

                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                5.h.verticalSpace,

                Text(
                  "Category",
                  style: style.bodyMedium!.copyWith(
                    fontSize: 13.sp,

                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                6.h.verticalSpace,

                Text(
                  "Size Details",

                  style: style.bodyMedium!.copyWith(
                    fontSize: 13.sp,

                    color: AppColors.textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                5.h.verticalSpace,

                Text(
                  "৳ 5000",
                  style: style.titleSmall!.copyWith(
                    color: AppColors.onPrimary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          VerticalCountTile(),
        ],
      ),
    );
  }
}
