import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/features/cart_screen/widgets/custom_order_info_row.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class OrderInfoSection extends StatelessWidget {
  final double subtotal;
  final double shippingCost;

  const OrderInfoSection({
    super.key,
    required this.subtotal,
    required this.shippingCost,
  });

  @override
  Widget build(BuildContext context) {
    final total = subtotal + shippingCost;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Info',
          style: AppStyles.black28boldstyle.copyWith(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(15.h),

        OrderInfoRow(
          label: 'Subtotal',
          value: '\$${subtotal.toStringAsFixed(2)}',
        ),

        Gap(10.h),

        OrderInfoRow(
          label: 'Shipping cost',
          value: '\$${shippingCost.toStringAsFixed(2)}',
        ),

        Gap(15.h),

        OrderInfoRow(
          label: 'Total',
          value: '\$${total.toStringAsFixed(2)}',
          isTotal: true,
        ),
      ],
    );
  }
}
