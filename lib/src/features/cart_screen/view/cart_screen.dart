import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/common_widgets/Custom_appbar.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/bottom_price_box.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/custom_info_tile.dart';
import 'package:medical_store_app/src/features/product_details_screens/controller/count_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/medicineList_controller.dart';

class CartScreen extends StatelessWidget {
  final MedicinelistController controller = Get.put(MedicinelistController());
  final CountController count = Get.put(CountController());

  CartScreen({super.key});

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
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                      padding: AppPadding.screenHorizontal,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Total ${controller.addList.length} items",
                          style: style.titleSmall!.copyWith(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    10.h.verticalSpace,
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.addList.length,
                      itemBuilder: (context, index) {
                        final item = controller.addList[index];

                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: 34.h,
                            left: 16.w,
                            right: 16.h,
                          ),
                          child: Slidable(
                            key: ValueKey(item.id),
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  spacing: 2,
                                  padding: EdgeInsets.only(right: 80.w),
                                  onPressed: (context) {
                                    controller.removeFromCart(item.id);
                                  },
                                  backgroundColor: AppColors.onPrimary,
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete_outline,
                                  label: 'Delete',
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                CustomInfoTile(
                                  img: item.img,
                                  name: item.name,
                                  brandName: 'Brand Name',
                                  category: item.catagory,
                                  sizeDetails: item.quantity,
                                  price: item.price,
                                  increament: () =>
                                      controller.updateTheItemCount(
                                        item.id,
                                        item.cartQuantity + 1,
                                      ),
                                  decreament: () =>
                                      controller.updateTheItemCount(
                                        item.id,
                                        item.cartQuantity - 1,
                                      ),
                                  count: item.cartQuantity.toString(),
                                ),

                                if (index == 0) ...[
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
                                ],
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
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
