import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/common_widgets/Custom_appbar.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/custom_info_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: AppPadding.screenHorizontal,
        child: Column(
          children: [
            40.h.verticalSpace,
            CustomAppbar(title: "Cart"),
            26.h.verticalSpace,
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
            18.h.verticalSpace,
            CustomInfoTile(),
          ],
        ),
      ),
    );
  }
}
