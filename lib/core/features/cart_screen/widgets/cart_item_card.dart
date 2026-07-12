import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class CartItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String priceText; // مثال للتمرير: "$45 (-$4.00 Tax)"
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onDelete;

  const CartItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.priceText,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: AppColors.lightgray,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          // 1. صورة المنتج
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.asset(imageUrl, fit: BoxFit.cover),
            ),
          ),
          Gap(15.w),

          // 2. تفاصيل المنتج والعداد
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // اسم المنتج فقط
                Text(
                  title,
                  style: AppStyles.black28boldstyle.copyWith(fontSize: 13.sp),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Gap(10.h),

                // السعر والضرائب (يقبل علامات الـ $)
                Text(
                  priceText,
                  style: AppStyles.gry13meduemstyle.copyWith(fontSize: 11.sp),
                ),
                Gap(10.h),

                // أزرار التحكم بالكمية
                Row(
                  children: [
                    buildCartActionButton(
                      svgPath: AppAssets.arrowdown,
                      onTap: onDecrement,
                    ),
                    Gap(15.w),
                    Text(
                      '$quantity',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1D1E20),
                      ),
                    ),
                    Gap(15.w),
                    // زر زيادة الكمية
                    buildCartActionButton(
                      svgPath: AppAssets.arrowup,
                      onTap: onIncrement,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 3. زر الحذف (أيقونة السلة باليمين بالأسفل)
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: buildCartActionButton(
                svgPath: AppAssets.delete,
                onTap: onDelete,
                iconColor: const Color(0xFF8F959E),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCartActionButton({
    required String svgPath,
    required VoidCallback onTap,
    Color iconColor = const Color(0xFF1D1E20),
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35.w,
        height: 35.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFFE7E8EA), width: 1),
          color: Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(
            svgPath,
            width: 18.w,
            height: 18.h,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
