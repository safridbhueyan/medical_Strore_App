import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/product_details_screens/controller/expension_controller.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/custom_discription.dart';

class CustomExpensionTile extends StatelessWidget {
  final String title;
  final int id;
  final ExpensionController controller = Get.put(ExpensionController());

  CustomExpensionTile({super.key, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Obx(
      () => AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: GestureDetector(
          onTap: () {
            controller.toggle(id);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 19.w,
                    right: 8.w,
                    top: 9.h,
                    bottom: 9.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColors.onSurface.withValues(alpha: 0.5),
                  ),
                  child: Row(
                    children: [
                      Text(
                        title,
                        style: style.bodyMedium!.copyWith(
                          color: AppColors.subTextColor,
                        ),
                      ),
                      Spacer(),
                      controller.id.value == id && controller.isExpanded.value
                          ? SvgPicture.asset(AppIcons.up)
                          : SvgPicture.asset(AppIcons.down),
                    ],
                  ),
                ),

                if (controller.id.value == id &&
                    controller.isExpanded.value) ...[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.w,
                      right: 8.w,
                      top: 9.h,
                      bottom: 9.h,
                    ),
                    child: CustomDiscription(),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
