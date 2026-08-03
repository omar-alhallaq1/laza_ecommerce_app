import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/features/home_screen/widgets/custom_icon_button.dart';
import 'package:laza_ecommerce_app/core/features/home_screen/widgets/product_item_card.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(45.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButtonWidget(
                    icon: SvgPicture.asset(
                      AppAssets.arrowleft,
                      width: 24.w,
                      height: 24.h,
                    ),
                    onTap: () => context.pop(),
                  ),
                  Text(
                    "Wishlist",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  CustomIconButton(
                    icon: SvgPicture.asset(
                      AppAssets.bagsvg,
                      width: 24.w,
                      height: 24.h,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Gap(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // النصوص على اليسار
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "365 Items",
                        style: AppStyles.black28boldstyle.copyWith(
                          fontSize: 17.sp,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        "in wishlist",
                        style: AppStyles.gry13meduemstyle.copyWith(
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),

                  // زر Edit على اليمين
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10.r),

                    child: SizedBox(
                      width: 68.w,
                      height: 37.h,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F6F8),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.pinsvg,
                              width: 16.w,
                              height: 16.h,
                            ),
                            Gap(6.w),
                            Text(
                              "Edit",
                              style: AppStyles.black16w500style.copyWith(
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20.h),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    crossAxisSpacing: 15.w,

                    mainAxisSpacing: 15.h,

                    childAspectRatio: 0.57,
                  ),

                  itemBuilder: (context, index) {
                    return ProductCard(
                      onCartTap: () {
                        // GoRouter.of(context).push(AppRoutes.productDetailsScreen);
                      },

                      imageUrl: '',

                      title: 'Nike Sportswear Club Fleece ',

                      price: 99,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
