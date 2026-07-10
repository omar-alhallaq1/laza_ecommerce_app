import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class SizeCardItem extends StatelessWidget {
  final String? size;
  final VoidCallback onTap;

  const SizeCardItem({super.key, this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            size ?? 'L',
            style: AppStyles.black16w500style.copyWith(fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
