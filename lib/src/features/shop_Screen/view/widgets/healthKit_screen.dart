import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/custom_Contaier.dart';

class HealthkitScreen extends StatelessWidget {
  final MedicinelistController controller = Get.put(MedicinelistController());
  HealthkitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 177.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.getByCategory("Health Kit").length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: 18.w,
                right: index == controller.medicine.length - 1 ? 18.w : 0,
              ),
              child: CustomContaier(
                isDiscountOn: false,
                img: controller.medicine[index].img,
                name: controller.medicine[index].name,
                power: controller.medicine[index].power,
                quantity: controller.medicine[index].quantity,
                price: controller.medicine[index].price,
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
