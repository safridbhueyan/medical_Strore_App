import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

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
        12.w.horizontalSpace,
        Text(
          title,
          style: style.titleMedium!.copyWith(color: AppColors.textColor),
        ),
      ],
    );
  }
}
