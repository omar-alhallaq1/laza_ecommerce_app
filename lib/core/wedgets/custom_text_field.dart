import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon; // بياخد أي ويدجت على اليمين (أيقونة أو نص)
  final double? width;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType; // نوع الكيبورد (إيميل / رقم / نص...)
  final TextInputAction? textInputAction; // زر next/done بالكيبورد

  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.width,
    this.isPassword,
    this.controller,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        autofocus: false,
        obscureText: isPassword ?? false,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        cursorColor: AppColors.primarycolor,
        style: AppStyles.black16w500style,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.black13boldstyle.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical:
                12.h, // مسافة عمودية متناسقة ليكون النص والـ suffix في السنتر
          ),
          // الخط السفلي فقط مطابق لتصميم الفيجما
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: const Color(0xffE8ECF4), width: 1.w),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.primarycolor, width: 1.5.w),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.w),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5.w),
          ),
          filled: false,
          suffixIcon: suffixIcon,
          // تضمن محاذاة النص أو الأيقونة الممررة على اليمين عمودياً مع النص تماماً
          suffixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
        ),
      ),
    );
  }
}
