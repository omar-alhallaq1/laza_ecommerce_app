import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class OrderInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const OrderInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppStyles.gry13meduemstyle.copyWith(
            fontSize: isTotal ? 16.sp : 15.sp,
            fontWeight: isTotal ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: AppStyles.black28boldstyle.copyWith(
            fontSize: isTotal ? 16.sp : 15.sp,
            fontWeight: isTotal ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
