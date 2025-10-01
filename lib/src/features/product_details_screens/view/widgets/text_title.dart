import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      children: [
        Text(
          "Shop: ",
          style: style.labelLarge!.copyWith(color: AppColors.textColor),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "ABC Pharma",
            style: style.labelLarge!.copyWith(color: AppColors.onPrimary),
          ),
        ),
        3.w.horizontalSpace,
        SvgPicture.asset(AppIcons.polygon),
      ],
    );
  }
}
