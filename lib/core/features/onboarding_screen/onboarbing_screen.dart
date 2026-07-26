import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(child: Container(color: AppColors.primarycolor)),

          // Top Left Shape
          Positioned(
            top: 0,
            left: -40.w,
            bottom: 642.h,
            child: Image.asset(
              AppAssets.layar1,
              width: 200.sp,
              height: 200.sp,
              fit: BoxFit.contain,
            ),
          ),

          // Left Light
          Positioned(
            top: size.height * 0.28,
            left: -60.w,
            child: Image.asset(
              AppAssets.layer2,
              width: 200.sp,
              height: 200.sp,
              fit: BoxFit.contain,
            ),
          ),

          // Bottom Right Light
          Positioned(
            bottom: 59.h,
            right: -69.w,
            child: Image.asset(
              AppAssets.layer3,
              width: 200.sp,
              height: 200.sp,
              fit: BoxFit.contain,
            ),
          ),

          // Main Image
          Positioned(
            top: size.height * 0.12,
            left: 0,
            right: 0,
            bottom: size.height * 0.24,
            child: Image.asset(AppAssets.onbording, fit: BoxFit.contain),
          ),

          // Bottom Card
          Positioned(
            bottom: 40.h,
            left: 15.w,
            right: 15.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Gap(25.h),
                  Text(
                    'Look Good, Feel Good',
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 25.sp),
                  ),

                  Gap(10.h),

                  Text(
                    'Create your individual & unique style and look amazing everyday.',
                    textAlign: TextAlign.center,
                    style: AppStyles.gry13meduemstyle.copyWith(fontSize: 15.sp),
                  ),

                  Gap(25.h),

                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 60.h,
                          child: PrimaryButtonwidget(
                            buttontext: 'Men',
                            textColor: AppColors.graycolor,
                            buttoncolor: AppColors.lightgray,
                            onpress: () {
                              GoRouter.of(
                                context,
                              ).pushNamed(AppRoutes.startedscreen);
                            },
                          ),
                        ),
                      ),

                      Gap(15.w),

                      Expanded(
                        child: SizedBox(
                          height: 60.h,
                          child: PrimaryButtonwidget(
                            buttontext: 'Women',
                            onpress: () {
                              GoRouter.of(
                                context,
                              ).pushNamed(AppRoutes.startedscreen);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  Gap(20.h),

                  TextButton(
                    onPressed: () {
                      GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.orderconfirmedscreen);
                    },
                    child: Text(
                      'Skip',
                      style: AppStyles.gry13meduemstyle.copyWith(
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
