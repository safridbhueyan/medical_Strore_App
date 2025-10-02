import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomRowTile extends StatelessWidget {
  final String icon;
  final String text;
  const CustomRowTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Row(
      children: [
        SvgPicture.asset(icon),
        20.w.horizontalSpace,
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: style.bodyMedium!.copyWith(
              color: AppColors.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
