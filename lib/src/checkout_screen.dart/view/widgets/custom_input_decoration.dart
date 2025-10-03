import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

InputDecoration inputdecore({
  String? text,
  String? hintext,
  Color? color,
  String? icon,
  TextStyle? hintStyle,
}) {
  return InputDecoration(
    labelText: text,
    hintText: hintext,

    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
    filled: true,
    fillColor: color ?? AppColors.onSurface.withValues(alpha: 0.5),
    hintStyle:
        hintStyle ??
        GoogleFonts.roboto(
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
          color: AppColors.secondary,
        ),
    suffixIcon: icon != null
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(icon),
          )
        : null,
    labelStyle: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff777980),
    ),
    prefixIconColor: Color(0xff4E5D78),
    suffixIconColor: Color(0xffffffff),
    errorStyle: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Colors.red,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.5)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onPrimary),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.5)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onError),
    ),
  );
}
