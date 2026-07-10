import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final VoidCallback? onFavoriteTap;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,

    required this.price,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 200.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F8),
                borderRadius: BorderRadius.circular(20.w),
              ),
              child: Center(
                child: SizedBox(
                  width: 160.w,
                  height: 203.h,
                  child: Icon(Icons.image_outlined, color: Colors.grey),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: GestureDetector(
                onTap: onFavoriteTap,
                child: SvgPicture.asset(
                  AppAssets.heartsvg,
                  width: 20.w,
                  height: 20.h,
                  colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                ),
              ),
            ),
          ],
        ),
        Gap(8.h),
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis, // لقص النص بـ ... إذا كان طويلاً
          style: AppStyles.black28boldstyle.copyWith(
            fontSize: 11.sp,
            height: 1.3,
          ),
        ),
        Gap(4.h),
        Text(
          '\$$price',
          style: AppStyles.black28boldstyle.copyWith(fontSize: 16.sp),
        ),
      ],
    );
  }
}
