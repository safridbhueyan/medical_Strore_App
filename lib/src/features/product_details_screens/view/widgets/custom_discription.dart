import 'package:flutter/material.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomDiscription extends StatelessWidget {
  const CustomDiscription({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Brands",
              style: style.bodyMedium!.copyWith(
                color: AppColors.textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Text(
              "XYZ Brand",
              style: style.bodyMedium!.copyWith(color: AppColors.textColor),
            ),
          ],
        ),
        Divider(color: AppColors.deActiveTextColor),
        Row(
          children: [
            Text(
              "Specifications",
              style: style.bodyMedium!.copyWith(
                color: AppColors.textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Text(
              "ABC Details Here",
              style: style.bodyMedium!.copyWith(color: AppColors.textColor),
            ),
          ],
        ),
      ],
    );
  }
}
