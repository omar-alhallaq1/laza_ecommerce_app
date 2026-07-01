import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // 1. طبقة الخلفية البنفسجية الثابتة
          Positioned.fill(child: Container(color: AppColors.primarycolor)),
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
          // 2. طبقة الإضاءة الجانبية
          Positioned(
            top: size.height * 0.28.h,
            left: -60.w,
            child: Image.asset(
              AppAssets.layer2,
              width: 200.sp,
              height: 200.sp,
              fit: BoxFit.contain,
            ),
          ),
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

          // 3. طبقة صورة الراجل (الموديل) - أبعاد نسبية بدل الأرقام الثابتة
          Positioned(
            top: size.height * 0.07.h,
            left: 0,
            right: 0,
            bottom: size.height * 0.24.h,
            child: Image.asset(AppAssets.onbording, fit: BoxFit.contain),
          ),

          // 4. طبقة الكارت الأبيض السفلي
          Positioned(
            bottom: 40.h,
            left: 15,
            right: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ).w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Look Good, Feel Good',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Gap(10.h),
                  const Text(
                    'Create your individual & unique style and look amazing everyday.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.4,
                    ),
                  ),
                  Gap(25.h),

                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF5F6FA),
                              foregroundColor: Colors.grey[600],
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Men',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Gap(15.h),
                      Expanded(
                        child: SizedBox(
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF9775FA),
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Women',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(20.h),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
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
