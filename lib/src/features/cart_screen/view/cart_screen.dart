import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/common_widgets/Custom_appbar.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/bottom_price_box.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/custom_info_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          40.h.verticalSpace,
          Padding(
            padding: AppPadding.screenHorizontal,
            child: CustomAppbar(title: "Cart"),
          ),
          26.h.verticalSpace,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: AppPadding.screenHorizontal,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Total 2 items",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  18.h.verticalSpace,
                  Padding(
                    padding: AppPadding.screenHorizontal,
                    child: Slidable(
                      key: ValueKey(0),
                      endActionPane: ActionPane(
                        motion: ScrollMotion(),
                        children: [
                          SlidableAction(
                            spacing: 2,
                            padding: EdgeInsets.only(right: 80.w),
                            onPressed: (context) {},
                            backgroundColor: AppColors.onPrimary,
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outline,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: CustomInfoTile(),
                    ),
                  ),
                  8.h.verticalSpace,
                  Padding(
                    padding: AppPadding.screenHorizontal,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Slide left to remove item from cart",
                        style: style.labelMedium!.copyWith(
                          color: AppColors.onError,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  12.h.verticalSpace,
                  Padding(
                    padding: AppPadding.screenHorizontal,
                    child: Slidable(
                      key: ValueKey(1),
                      endActionPane: ActionPane(
                        motion: ScrollMotion(),
                        children: [
                          SlidableAction(
                            spacing: 2,
                            padding: EdgeInsets.only(right: 80.w),
                            onPressed: (context) {},
                            backgroundColor: AppColors.onPrimary,
                            foregroundColor: Colors.white,
                            icon: Icons.delete_outline,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: CustomInfoTile(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          20.h.verticalSpace,
          Align(alignment: Alignment.bottomCenter, child: BottomPriceBox()),
        ],
      ),
    );
  }
}
