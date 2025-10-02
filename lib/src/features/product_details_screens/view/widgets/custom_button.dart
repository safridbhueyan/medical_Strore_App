import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_store_app/core/constant/icons.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/features/product_details_screens/view/widgets/count_button.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.onPrimary,
        ),
        child: Row(
          children: [
            CountButton(),
            Spacer(),
            SvgPicture.asset(AppIcons.cartAddIcon),
            10.w.horizontalSpace,
            Text(
              "Add to Cart",
              style: style.bodyMedium!.copyWith(color: AppColors.onSurface),
            ),
            25.w.horizontalSpace,
          ],
        ),
      ),
    );
  }
}
