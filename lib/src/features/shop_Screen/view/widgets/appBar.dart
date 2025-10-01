// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class Appbar extends StatelessWidget {
  final String title;
  void Function()? onTap;
  Appbar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(AppIcons.backArrow),
        ),
        SizedBox(width: 12.w),
        Text(
          title,
          style: style.titleMedium!.copyWith(color: AppColors.fillcolor),
        ),

        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(AppIcons.shoppingIcon),
        ),
      ],
    );
  }
}
