import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_primary_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // سكرول واحد فقط ونظيف بدون بادينق هنا
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. تغليف العناصر العلوية بالبادينق الجانبي لحالها
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(20.h),
                    CustomBackButtonWidget(
                      icon: SvgPicture.asset(
                        AppAssets.arrowleft,
                        width: 24.w,
                        height: 24.h,
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                    Gap(15.h),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Let’s Get Started",
                        style: AppStyles.black28boldstyle,
                      ),
                    ),
                    Gap(185.h),
                    PrimaryButtonwidget(
                      width: 335.w,
                      height: 50.h,
                      fontsize: 20.sp,
                      buttontext: "Facebook",
                      buttoncolor: const Color(0xff4267B2),
                      textColor: AppColors.whitecolor,
                      icon: SvgPicture.asset(
                        AppAssets.facebooksvg,
                        width: 24.w,
                        height: 24.h,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      onpress: () {},
                    ),
                    Gap(10.h),
                    PrimaryButtonwidget(
                      width: 335.w,
                      height: 50.h,
                      fontsize: 20.sp,
                      buttontext: "Twitter",
                      buttoncolor: const Color(0xff1DA1F2),
                      textColor: AppColors.whitecolor,
                      icon: SvgPicture.asset(
                        AppAssets.twittersvg,
                        width: 24.w,
                        height: 24.h,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      onpress: () {},
                    ),
                    Gap(10.h),
                    PrimaryButtonwidget(
                      width: 335.w,
                      height: 50.h,
                      fontsize: 20.sp,
                      buttontext: "Google",
                      buttoncolor: const Color(0xffEA4335),
                      textColor: AppColors.whitecolor,
                      icon: SvgPicture.asset(
                        AppAssets.googlesvg,
                        width: 24.w,
                        height: 24.h,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      onpress: () {},
                    ),
                    Gap(204.h),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: AppStyles.gry13meduemstyle.copyWith(
                            fontSize: 15.sp,
                          ),
                          children: [
                            TextSpan(
                              text: "Register",
                              style: AppStyles.black16w500style.copyWith(
                                color: AppColors.blackcolor,
                                fontSize: 15.sp,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    Gap(25.h),
                  ],
                ),
              ),

              // 2. زر الـ Login خارج البادينق تماماً ليلتصق بحواف الشاشة بالكامل
              PrimaryButtonwidget(
                width: double.infinity,
                height: 75.h,
                borderradius: 0.r,
                fontsize: 20.sp,
                buttontext: "Login",
                buttoncolor: AppColors.primarycolor,
                textColor: AppColors.whitecolor,
                onpress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
