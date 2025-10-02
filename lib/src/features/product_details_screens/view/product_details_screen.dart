import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/color_selection_tile.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/custom_expension_tile.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/row_images.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/row_size_tile.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/text_title.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/appBar.dart';

class ProductDetailsScreen extends StatelessWidget {
  final int id;
  final MedicinelistController controller = Get.put(MedicinelistController());
  ProductDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final data = controller.getByID(id);
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: AppPadding.screenHorizontal,
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Appbar(title: "", onTap: () {}),
            SizedBox(height: 22.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10.r),
                      child: Stack(
                        children: [
                          Image.asset(data!.img),
                          Positioned(
                            top: 5,
                            bottom: 5,
                            left: 0,
                            right: 0,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // sliding picture logic will be here
                                  },
                                  child: SvgPicture.asset(AppIcons.rightArrow),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    // same sliding logic will go here
                                  },
                                  child: SvgPicture.asset(AppIcons.leftArrow),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    11.h.verticalSpace,
                    RowImages(id: id),
                    16.h.verticalSpace,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        data.name,
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    TextTitle(),
                    18.h.verticalSpace,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "color",
                        style: style.bodyMedium!.copyWith(
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    ColorSelectionTile(id: id),
                    18.h.verticalSpace,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Size",
                        style: style.bodyMedium!.copyWith(
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    10.h.verticalSpace,
                    RowSizeTile(),
                    24.h.verticalSpace,
                    CustomExpensionTile(title: 'Specifications', id: 1),
                    2.h.verticalSpace,
                    CustomExpensionTile(title: 'Description', id: 2),
                    2.h.verticalSpace,
                    CustomExpensionTile(title: 'Product Code', id: 3),
                    2.h.verticalSpace,
                    CustomExpensionTile(title: 'Warranty', id: 4),
                    2.h.verticalSpace,
                    SizedBox(height: 200.h),
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
