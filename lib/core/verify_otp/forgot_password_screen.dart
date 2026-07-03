import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Forgot Password",
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
                            width: 225.w,
                            height: 165.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Gap(80.h),
                      Text("Email Address", style: AppStyles.gry13meduemstyle),
                      Gap(15.h),
                      CustomTextField(
                        controller: emailController,
                        hintText: "bill.sanders@example.com",
                        keyboardType: TextInputType.emailAddress,
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter your email address';
                        //   }
                        //   return null;
                        // },
                      ),
                      Gap(160.h),
                      Center(
                        // <-- هذا اللي هيجيب الـ SizedBox كله في نص الشاشة أفقياً
                        child: SizedBox(
                          width: 290.w,
                          child: Text(
                            "Please write your email to receive a confirmation code to set a new password.",
                            textAlign: TextAlign.center,
                            style: AppStyles.gry13meduemstyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
