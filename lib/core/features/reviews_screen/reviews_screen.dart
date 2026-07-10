import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/features/reviews_screen/widgets/review_card_item.dart';
import 'package:laza_ecommerce_app/core/features/reviews_screen/widgets/reviews_header_row.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(45.h),
            Row(
              children: [
                CustomBackButtonWidget(
                  icon: SvgPicture.asset(
                    AppAssets.arrowleft,
                    width: 24.w,
                    height: 24.h,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                Gap(92.w),
                Text(
                  "Reviews",
                  style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                ),
              ],
            ),
            Gap(30.h),
            ReviewsHeaderRow(
              totalReviews: 20,
              averageRating: 4.5,
              starSize: 20,
              onAddReviewTap: () {},
            ),
            Gap(30.h),
            ReviewCardItem(
              name: "John Doe",

              rating: 4.5,
              date: '',
              comment: '',
              profileImage: '',
            ),
          ],
        ),
      ),
    );
  }
}
