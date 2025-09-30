// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
    filled: true,
    fillColor: AppColors.onPrimary.withValues(alpha: 0.1),
    hintStyle: GoogleFonts.roboto(
      fontSize: 16.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.secondary,
    ),
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
      borderSide: BorderSide(color: AppColors.onPrimary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onPrimary),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onPrimary),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onPrimary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.onPrimary),
    ),
  );
}
