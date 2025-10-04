import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/product_details_screen.dart';
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
        height: 180.h,
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
                onTap: () {
                  debugPrint("\n\n\n ${controllers[index].id}\n\n\n\n");
                  Get.to(() => ProductDetailsScreen(id: controllers[index].id));
                },
                onTapToaddToCart: () {
                  controller.addToCart(controllers[index].id);
                  debugPrint("\n\n\n\n${controller.addList.length.toString()}");
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
