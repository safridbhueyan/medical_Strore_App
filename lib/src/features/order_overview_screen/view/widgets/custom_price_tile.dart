import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomPriceTile extends StatelessWidget {
  final String title;
  final String price;
  final FontWeight? fontWeight;
  final double? size;
  final Color? color;
  const CustomPriceTile({
    super.key,
    required this.price,
    required this.title,
    this.fontWeight,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: style.bodyMedium!.copyWith(
                color: color ?? AppColors.textColor,
                fontWeight: fontWeight ?? FontWeight.w400,
              ),
            ),
            Spacer(),
            Text(
              price,
              style: style.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: color ?? AppColors.textColor,
                fontSize: size ?? 15.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
