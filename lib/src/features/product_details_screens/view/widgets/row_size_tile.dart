import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:medical_store_app/src/features/product_details_screens/controller/size_controller.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/custom_size_tile.dart';

class RowSizeTile extends StatelessWidget {
  final SizeController controller = Get.put(SizeController());
  RowSizeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          CustomSizeTile(
            title: 'S',
            isSelected: controller.isSelected == "S",
            onTap: () {
              controller.select("S");
            },
          ),
          14.w.horizontalSpace,
          CustomSizeTile(
            title: 'M',
            isSelected: controller.isSelected == "M",
            onTap: () {
              controller.select("M");
            },
          ),
          14.w.horizontalSpace,
          CustomSizeTile(
            title: 'L',
            isSelected: controller.isSelected == "L",
            onTap: () {
              controller.select("L");
            },
          ),
          14.w.horizontalSpace,
          CustomSizeTile(
            title: 'XL',
            isSelected: controller.isSelected == "XL",
            onTap: () {
              controller.select("XL");
            },
          ),
          14.w.horizontalSpace,
          CustomSizeTile(
            isAvailable: true,
            title: 'XXL',
            isSelected: controller.isSelected == "XXL",
            onTap: () {
              controller.select("XXL");
            },
          ),
          14.w.horizontalSpace,
          CustomSizeTile(
            title: 'XXXL',
            isSelected: controller.isSelected == "XXXL",
            onTap: () {
              controller.select("XXXL");
            },
          ),
          14.w.horizontalSpace,
        ],
      ),
    );
  }
}
