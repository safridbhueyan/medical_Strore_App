import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/checkout_screen.dart/view/checkout_screen.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/custom_order_button.dart';
import 'package:medical_store_app/src/features/order_overview_screen/view/widgets/custom_price_tile.dart';

class BottomPriceBox extends StatelessWidget {
  const BottomPriceBox({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,

      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
        color: AppColors.primaryContainer,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Apply promo code",
                    hintStyle: style.bodyMedium!.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              18.w.horizontalSpace,
              Expanded(
                flex: 1,
                child: CustomOrderButton(title: 'Apply', onTap: () {}),
              ),
            ],
          ),
          20.h.verticalSpace,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Payment Summery",
              style: style.bodyMedium!.copyWith(
                fontSize: 15.sp,
                color: AppColors.onSurface,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomPriceTile(
            price: '৳ 1,000.00',
            title: 'Sub total',
            color: AppColors.onSurface,
          ),
          6.h.verticalSpace,
          CustomPriceTile(
            price: '\$ 0.00',
            title: 'Discount',
            color: AppColors.onSurface,
          ),
          6.h.verticalSpace,
          CustomPriceTile(
            price: '\$ 0.00',
            title: 'Delivery Charge',
            color: AppColors.onSurface,
          ),
          39.h.verticalSpace,
          CustomOrderButton(
            title: '',
            onTap: () {},
            isCustomModeOn: true,
            child: GestureDetector(
              onTap: () {
                Get.to(CheckoutScreen());
              },
              child: Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.onPrimary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("৳1,000"),
                    10.w.horizontalSpace,
                    Container(
                      height: 28.h,
                      color: AppColors.onSurface,
                      width: 1.4,
                    ),
                    10.w.horizontalSpace,
                    Text("Checkout Process"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
