import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/common_widgets/Custom_appbar.dart';
import 'package:medical_store_app/src/features/order_overview_screen/view/widgets/custom_info_container.dart';
import 'package:medical_store_app/src/features/order_overview_screen/view/widgets/custom_price_tile.dart';
import 'package:medical_store_app/src/features/order_overview_screen/view/widgets/custom_row_tile.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: AppPadding.screenHorizontal,
        child: Column(
          children: [
            40.h.verticalSpace,
            CustomAppbar(title: 'Order Overview'),
            26.h.verticalSpace,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Personal Information",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    14.h.verticalSpace,
                    CustomInfoContainer(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.w,
                          vertical: 17.h,
                        ),
                        child: Column(
                          children: [
                            CustomRowTile(
                              icon: AppIcons.uIDIcon,
                              text: 'Jane Cooper',
                            ),
                            18.h.verticalSpace,
                            CustomRowTile(
                              icon: AppIcons.callIcon,
                              text: '(302) 555-0107',
                            ),
                            18.h.verticalSpace,
                            CustomRowTile(
                              icon: AppIcons.mailIcon,
                              text: 'tim.jennings@example.com',
                            ),
                          ],
                        ),
                      ),
                    ),
                    16.h.verticalSpace,
                    CustomInfoContainer(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.w,
                          vertical: 17.h,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Personal Information",
                                style: style.titleSmall!.copyWith(
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            10.h.verticalSpace,
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "Lorem ipsum dolor sit amet consectetur... ",
                                    style: style.bodyMedium!.copyWith(
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Read More",
                                    style: style.bodyMedium!.copyWith(
                                      color: AppColors.onPrimary,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    20.h.verticalSpace,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Shipping Address",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    14.h.verticalSpace,
                    CustomInfoContainer(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.w,
                          vertical: 17.h,
                        ),
                        child: Column(
                          children: [
                            CustomRowTile(
                              icon: AppIcons.deliveryIcon,
                              text:
                                  "2715 Ash Dr. San Jose, South Dakota\n83475",
                            ),
                          ],
                        ),
                      ),
                    ),
                    24.h.verticalSpace,
                    CustomInfoContainer(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.w,
                          vertical: 17.h,
                        ),
                        child: Column(
                          children: [
                            CustomPriceTile(
                              price: '৳ 1,000.00',
                              title: 'Stethoscope X 2',
                            ),
                            19.h.verticalSpace,
                            Divider(
                              color: AppColors.deActiveTextColor.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            12.h.verticalSpace,
                            CustomPriceTile(
                              price: '৳ 1,000.00',
                              title: 'Sub total',
                            ),
                            10.h.verticalSpace,
                            CustomPriceTile(
                              price: '৳ 50.00',
                              title: 'Shipping',
                            ),
                            10.h.verticalSpace,
                            CustomPriceTile(price: '৳ 200.00', title: 'Coupon'),
                            12.h.verticalSpace,
                            Divider(
                              color: AppColors.deActiveTextColor.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            8.h.verticalSpace,
                            CustomPriceTile(
                              price: '৳ 850.00',
                              title: 'Total',
                              fontWeight: FontWeight.w600,
                            ),
                            10.h.verticalSpace,
                            CustomPriceTile(
                              price: '৳ 50.00',
                              title: 'Paid',
                              fontWeight: FontWeight.w600,
                            ),
                            12.h.verticalSpace,
                            Divider(
                              color: AppColors.deActiveTextColor.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            12.h.verticalSpace,
                            CustomPriceTile(
                              price: '800.00',
                              title: 'Grand Total',
                              fontWeight: FontWeight.w600,
                              size: 30.sp,
                            ),
                          ],
                        ),
                      ),
                    ),

                    30.h.verticalSpace,
                    SizedBox(
                      height: 50.h,
                      width: 361.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            AppColors.onPrimary,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Confirm",
                          style: style.titleSmall!.copyWith(
                            color: AppColors.onSurface,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    200.h.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
