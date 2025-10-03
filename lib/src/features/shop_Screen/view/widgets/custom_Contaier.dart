import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/custom_add_to_curt_button.dart';

class CustomContaier extends StatelessWidget {
  final bool? isDiscountOn;
  final String img;
  final String name;
  final String power;
  final String quantity;
  final String price;
  final void Function()? onTap;
  final void Function()? onTapToaddToCart;

  const CustomContaier({
    super.key,
    this.isDiscountOn,
    required this.img,
    required this.name,
    required this.power,
    required this.quantity,
    required this.price,
    required this.onTap,
    required this.onTapToaddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 126.w,

        padding: EdgeInsets.all(3.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.onSurface.withValues(alpha: 0.5),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img, height: 77.h, width: 120.w),
            SizedBox(height: 6.h),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: style.labelLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textColor,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Row(
                children: [
                  Text(
                    power,
                    style: style.labelMedium!.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTextColor,
                    ),
                  ),

                  Container(
                    width: 1.w,
                    height: 15.h,
                    color: AppColors.subTextColor,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                  ),

                  Text(
                    quantity,
                    style: style.labelMedium!.copyWith(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.subTextColor,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 7.5.h),

            Divider(
              color: AppColors.onPrimary.withValues(alpha: 0.2),
              thickness: 2,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  isDiscountOn!
                      ? Column(
                          children: [
                            Text(
                              price,
                              style: style.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),

                            Text(
                              price,

                              style: style.bodyMedium!.copyWith(
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1.5,
                                decorationColor: AppColors.deActiveTextColor
                                    .withValues(alpha: 0.2),
                                fontWeight: FontWeight.w500,
                                color: AppColors.deActiveTextColor.withValues(
                                  alpha: 0.2,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Text(
                          price,
                          style: style.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                  Spacer(),
                  CustomAddToCurtButton(onTap: onTapToaddToCart),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
