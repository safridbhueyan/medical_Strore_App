import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/order_overview_screen/view/widgets/custom_price_tile.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/custom_button.dart';

class BottomPriceBox extends StatelessWidget {
  const BottomPriceBox({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      height: 280.h,
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
              Expanded(child: TextFormField()),
              Expanded(child: CustomButton(onTap: () {})),
            ],
          ),
          20.h.verticalSpace,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Payment Summery",
              style: style.bodyMedium!.copyWith(
                color: AppColors.onSurface,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomPriceTile(price: '৳ 1,000.00', title: 'Sub total'),
          6.h.verticalSpace,
          CustomPriceTile(price: '\$ 0.00', title: 'Discount'),
          6.h.verticalSpace,
          CustomPriceTile(price: '\$ 0.00', title: 'Delivery Charge'),
          6.h.verticalSpace,
        ],
      ),
    );
  }
}
