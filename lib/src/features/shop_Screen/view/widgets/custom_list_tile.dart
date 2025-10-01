import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/custom_Contaier.dart';

class CustomListTile extends StatelessWidget {
  final String category;
  final int? count;
  final MedicinelistController controller = Get.put(MedicinelistController());
  CustomListTile({super.key, required this.category, this.count});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 177.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: count ?? controller.getByCategory(category).length,
          itemBuilder: (context, index) {
            final controllers = controller.getByCategory(category);
            return Padding(
              padding: EdgeInsets.only(
                left: 18.w,
                right: index == controller.medicine.length - 1 ? 18.w : 0,
              ),
              child: CustomContaier(
                isDiscountOn: false,
                img: controllers[index].img,
                name: controllers[index].name,
                power: controllers[index].power,
                quantity: controllers[index].quantity,
                price: controllers[index].price,
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
