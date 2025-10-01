import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/shop_Screen/controller/tabBar_controller.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/appBar.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/widgets/healthKit_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    final TabbarControllerX controller = Get.put(TabbarControllerX());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.h),
          Padding(
            padding: AppPadding.screenHorizontal,
            child: Appbar(title: "Shop", onTap: () {}),
          ),
          SizedBox(height: 22.h),
          Padding(
            padding: AppPadding.screenHorizontal,
            child: TextFormField(
              style: style.bodyMedium!.copyWith(color: AppColors.onSecondary),
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(AppIcons.searchIcon),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: AppPadding.screenHorizontal,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Best Selling",
                style: style.bodyLarge!.copyWith(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          TabBar(
            controller: controller.tabController,
            labelColor: AppColors.textColor,
            unselectedLabelColor: AppColors.fillcolorTwo,
            indicatorColor: AppColors.textColor.withValues(alpha: 0.8),
            labelStyle: style.bodyMedium!.copyWith(fontSize: 15.sp),
            unselectedLabelStyle: style.bodySmall,
            textScaler: TextScaler.linear(1),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 40.w),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(text: "Health Kit"),
              Tab(text: "Diabetics Kit"),
              Tab(text: "Baby Care"),
              Tab(text: "Pressure"),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller.tabController,
              children: [
                HealthkitScreen(),
                Center(child: Text("Medicines")),
                Center(child: Text("Medicines")),
                Center(child: Text("Equipments")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
