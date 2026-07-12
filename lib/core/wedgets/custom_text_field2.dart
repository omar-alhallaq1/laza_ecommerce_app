import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';

class CustomTextField2 extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final double? width;
  final bool? isPassword;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextField2({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.width,
    this.isPassword,
    this.controller,
    this.validator,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        maxLines: maxLines ?? 1,
        autofocus: false,
        obscureText: isPassword ?? false,
        cursorColor: AppColors.primarycolor,
        decoration: InputDecoration(
          hintText: hintText ?? "Type here",
          hintStyle: TextStyle(
            fontSize: 16.sp,
            color: const Color(0xff8391A1),
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: const Color(0xffE8ECF4), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primarycolor, width: 1.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1.w),
          ),
          filled: true,
          fillColor: const Color(0xffF7F8F9),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
