import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // ------------------ Controllers ------------------
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  // ------------------ UI State ------------------
  bool _isRemembered = false;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      child: Text("Sign Up", style: AppStyles.black28boldstyle),
                    ),
                    Gap(60.h),

                    // ---------------- Username ----------------
                    Text("Username", style: AppStyles.black16w500style),
                    Gap(15.h),
                    CustomTextField(
                      controller: _usernameController,
                      hintText: "Esther Howard",
                      textInputAction: TextInputAction.next,
                      suffixIcon: Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.sp,
                      ),
                    ),
                    Gap(20.h),

                    // ---------------- Password ----------------
                    Text("Password", style: AppStyles.black16w500style),
                    Gap(10.h),
                    CustomTextField(
                      controller: _passwordController,
                      hintText: "Enter your password",
                      isPassword: _obscurePassword,
                      textInputAction: TextInputAction.next,
                      suffixIcon: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          size: 20.sp,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    Gap(20.h),

                    // ---------------- Email ----------------
                    Text("Email Address", style: AppStyles.black16w500style),
                    Gap(10.h),
                    CustomTextField(
                      controller: _emailController,
                      hintText: "bill.sanders@example.com",
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      suffixIcon: Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.sp,
                      ),
                    ),
                    Gap(20.h),

                    // ---------------- Remember Me ----------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: const Color(0xff1D2022),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.9,
                          child: Switch.adaptive(
                            value: _isRemembered,
                            activeThumbColor: Colors.white,
                            activeTrackColor: const Color(0xff34C759),
                            inactiveTrackColor: const Color(0xffE9E9EA),
                            onChanged: (bool value) {
                              setState(() {
                                _isRemembered = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Gap(168.h),
                  ],
                ),
              ),

              // ---------------- Sign Up Button (عرض كامل، خارج الـ Padding) ----------------
              PrimaryButtonwidget(
                width: double.infinity,
                height: 75.h,
                borderradius: 0.r,
                fontsize: 20.sp,
                buttontext: "Sign Up",
                buttoncolor: AppColors.primarycolor,
                textColor: AppColors.whitecolor,
                onpress: () {
                  GoRouter.of(context).pushNamed(AppRoutes.signupscreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
