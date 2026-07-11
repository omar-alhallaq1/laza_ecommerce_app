import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class ReviewsHeaderRow extends StatelessWidget {
  final String? totalReviews;
  final double averageRating;
  final VoidCallback onAddReviewTap;
  final double? starSize;

  const ReviewsHeaderRow({
    super.key,
    required this.totalReviews,
    required this.averageRating,
    required this.onAddReviewTap,
    this.starSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  totalReviews ?? '0',
                  style: AppStyles.black28boldstyle.copyWith(fontSize: 15.sp),
                ),

                Gap(6.w),

                Text(
                  'Reviews',
                  style: AppStyles.black28boldstyle.copyWith(fontSize: 15.sp),
                ),
              ],
            ),

            Gap(6.w),

            Row(
              children: [
                Text(
                  averageRating.toStringAsFixed(1),
                  style: AppStyles.black13boldstyle,
                ),

                Gap(6.w),

                RatingBarIndicator(
                  rating: averageRating,
                  itemCount: 5,
                  itemSize: starSize ?? 15.sp,
                  unratedColor: const Color(0xff8F959E),
                  itemBuilder: (_, __) => SvgPicture.asset(
                    AppAssets.starsvg,
                    width: 13.w,
                    height: 13.h,
                    colorFilter: const ColorFilter.mode(
                      AppColors.brightOrange,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        PrimaryButtonwidget(
          width: 160.w,
          height: 40.h,
          fontsize: 14.sp,
          buttoncolor: AppColors.orangecolor,
          borderradius: 8.r,
          onpress: onAddReviewTap,
          buttontext: 'Add Review',
          icon: SvgPicture.asset(AppAssets.editsvg),
        ),
      ],
    );
  }
}
