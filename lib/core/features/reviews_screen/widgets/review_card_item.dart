import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class ReviewCardItem extends StatelessWidget {
  final String name;
  final String date;
  final double rating;
  final String comment;
  final String? profileImage;
  final double? starSize;

  const ReviewCardItem({
    super.key,
    required this.name,
    required this.date,
    required this.rating,
    required this.comment,
    required this.profileImage,
    this.starSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.lightgray,
                    child: SvgPicture.asset(
                      AppAssets.profile,
                      colorFilter: ColorFilter.mode(
                        AppColors.graycolor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Gap(10.w),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.black28boldstyle.copyWith(
                            fontSize: 15.sp,
                          ),
                        ),

                        Gap(4.h),

                        Row(
                          children: [
                            SvgPicture.asset(
                              AppAssets.clocksvg,
                              width: 15.w,
                              height: 15.h,
                              colorFilter: ColorFilter.mode(
                                AppColors.graycolor,
                                BlendMode.srcIn,
                              ),
                            ),

                            Gap(4),

                            Text(
                              date,
                              style: AppStyles.gry13meduemstyle.copyWith(
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Gap(12.w),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: rating.toStringAsFixed(1),
                        style: AppStyles.black28boldstyle.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                      TextSpan(
                        text: ' Rating',
                        style: AppStyles.gry13meduemstyle.copyWith(
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                const Gap(4),

                RatingBarIndicator(
                  rating: rating,
                  itemCount: 5,
                  itemSize: starSize ?? 15.sp,
                  unratedColor: const Color(0xff8F959E),
                  itemBuilder: (_, _) => SvgPicture.asset(
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

        Gap(12.h),

        Text(
          comment,
          style: AppStyles.gry13meduemstyle.copyWith(
            fontSize: 15.sp,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
