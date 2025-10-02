import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/product_details_screens/controller/select_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';

class ColorSelectionTile extends StatelessWidget {
  final int id;
  final MedicinelistController controller = Get.put(MedicinelistController());
  final SelectController selectController = Get.put(SelectController());

  ColorSelectionTile({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final data = controller.getByID(id);

    return Obx(
      () => Row(
        children: [
          GestureDetector(
            onTap: () {
              selectController.colorSetselected(0);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: selectController.isColorSelected(0)
                      ? AppColors.onPrimary
                      : Colors.transparent,
                  width: 1.5,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.asset(
                  data!.img,
                  height: 60.h,
                  width: 60.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          10.w.horizontalSpace,

          GestureDetector(
            onTap: () {
              selectController.colorSetselected(1);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: selectController.isColorSelected(1)
                      ? AppColors.onPrimary
                      : Colors.transparent,
                  width: 1.5,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.asset(
                  data.img,
                  height: 60.h,
                  width: 60.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          10.w.horizontalSpace,

          GestureDetector(
            onTap: () {
              selectController.colorSetselected(2);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: selectController.isColorSelected(2)
                      ? AppColors.onPrimary
                      : Colors.transparent,
                  width: 1.5,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.asset(
                  data.img,
                  height: 60.h,
                  width: 60.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          10.w.horizontalSpace,
        ],
      ),
    );
  }
}
