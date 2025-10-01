import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/custom_list_tile.dart';

class HealthkitScreen extends StatelessWidget {
  final MedicinelistController controller = Get.put(MedicinelistController());
  HealthkitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CustomListTile(category: "Health Kit"),
            SizedBox(height: 20.h),
            CustomListTile(category: "Diabetics Kit"),
            SizedBox(height: 20.h),
            CustomListTile(category: 'Baby Care'),
            SizedBox(height: 200.h),
          ],
        ),
      ),
    );
  }
}
