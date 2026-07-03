import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';
import 'package:go_router/go_router.dart';

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
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).r,
                  child: Column(
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
                ),
                Gap(25.h),
                PrimaryButtonwidget(
                  width: double.infinity,
                  height: 75.h,
                  borderradius: 0.r,
                  fontsize: 20.sp,
                  buttontext: "Confirm Email",
                  buttoncolor: AppColors.primarycolor,
                  textColor: AppColors.whitecolor,
                  onpress: () {
                    GoRouter.of(
                      context,
                    ).pushNamed(AppRoutes.verificationcodeScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
