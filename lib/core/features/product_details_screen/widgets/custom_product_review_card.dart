import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class ProductReviewCard extends StatelessWidget {
  final String name;
  final String date;
  final double rating;
  final double starSize;
  final String comment;

  const ProductReviewCard({
    super.key,
    required this.name,
    required this.date,
    required this.rating,
    required this.comment,
    required this.starSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFFF5F6F8),
              child: Icon(Icons.person, color: Colors.grey),
            ),

            Gap(12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Gap(4.h),

                  Text(
                    date,
                    style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                  ),
                ],
              ),
            ),

            Gap(12.w),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: rating.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: ' Rating',
                        style: AppStyles.gry13meduemstyle,
                      ),
                    ],
                  ),
                ),
                Gap(4.h),

                RatingBarIndicator(
                  rating:
                      starSize, // القيمة الثابتة للتصميم حالياً (هتعرضلك 4 نجوم برتقالي وواحدة رمادي)
                  itemCount: 5,
                  itemSize: 16,
                  direction: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const Icon(Icons.star, color: Colors.orange),
                  unratedColor: const Color(
                    0xFFE0E0E0,
                  ), // لون النجمة غير الممتلئة (الرمادي الفاتح مثل التصميم)
                ),
              ],
            ),
          ],
        ),

        Gap(16.h),

        Text(
          comment,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey.shade600,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
