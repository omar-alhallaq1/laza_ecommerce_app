import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:pinput/pinput.dart'; // استيراد مكتبة الـ OTP الجديدة
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 1. تحديد التنسيق الافتراضي للمربعات (Default Style)
    final defaultPinTheme = PinTheme(
      width: 60.w,
      height: 65.h,
      textStyle: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
    );

    // 2. تحديد شكل المربع عندما يقوم المستخدم بالضغط عليه وكتابة الرقم (Focused Style)
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(
          color: AppColors.primarycolor,
          width: 1.5,
        ), // يتغير للون البنفسجي الأساسي للتطبيق
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(45.h),
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
                        "Verification Code",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Gap(68.h),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          AppAssets.forgetpassword,
                          width: 190.w,
                          height: 165.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Gap(60.h),

                    // 3. استدعاء ويدجيت الـ OTP السحري هنا بدلاً من الـ Row القديم
                    Align(
                      alignment: Alignment.center,
                      child: Pinput(
                        length: 4, // عدد مربعات التحقق
                        controller: pinController,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        // لمنع ظهور الأنيميشن الافتراضي لو أردت شكل ثابت ونظيف كالتصميم
                        showCursor: true,
                        onCompleted: (pin) {
                          print("الرمز المدخل بالكامل: $pin");
                        },
                      ),
                    ),

                    Gap(166.h),
                    Center(
                      child: Text(
                        "00:20 resend confirmation code.",
                        textAlign: TextAlign.center,
                        style: AppStyles.gry13meduemstyle,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(25.h),
              PrimaryButtonwidget(
                width: double.infinity,
                height: 75.h,
                borderradius: 0.r,
                fontsize: 20.sp,
                buttontext: "Confirm Code",
                buttoncolor: AppColors.primarycolor,
                textColor: AppColors.whitecolor,
                onpress: () {
                  // لقراءة الرمز المدخل عند الضغط على الزر:
                  String currentOtp = pinController.text;
                  // print("OTP عند الضغط: $currentOtp");

                  GoRouter.of(
                    context,
                  ).pushNamed(AppRoutes.ceatenewpasswordScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
