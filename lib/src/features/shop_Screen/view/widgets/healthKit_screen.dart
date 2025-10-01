import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/custom_list_tile.dart';

class HealthkitScreen extends StatelessWidget {
  final MedicinelistController controller = Get.put(MedicinelistController());
  HealthkitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CustomListTile(category: "Health Kit"),
            SizedBox(height: 32.h),
            Padding(
              padding: AppPadding.screenHorizontal,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Health Kit",
                  style: style.bodyLarge!.copyWith(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 15.h),

            CustomListTile(category: "Health Kit"),
            SizedBox(height: 32.h),
            Padding(
              padding: AppPadding.screenHorizontal,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Diabetics Kit",
                  style: style.bodyLarge!.copyWith(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            CustomListTile(category: 'Diabetics Kit'),
            SizedBox(height: 32.h),
            Padding(
              padding: AppPadding.screenHorizontal,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Baby Care",
                  style: style.bodyLarge!.copyWith(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            CustomListTile(category: 'Baby Care'),
            SizedBox(height: 200.h),
          ],
        ),
      ),
    );
  }
}
