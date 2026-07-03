import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
  TextEditingController code1Controller = TextEditingController(text: "7");
  TextEditingController code2Controller = TextEditingController(text: "4");
  TextEditingController code3Controller = TextEditingController(text: "2");
  TextEditingController code4Controller = TextEditingController(text: "3");

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
                      Gap(80.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 60.w,
                            height: 65.h,
                            child: TextFormField(
                              controller: code1Controller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60.w,
                            height: 65.h,
                            child: TextFormField(
                              controller: code2Controller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60.w,
                            height: 65.h,
                            child: TextFormField(
                              controller: code3Controller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60.w,
                            height: 65.h,
                            child: TextFormField(
                              controller: code4Controller,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                counterText: "",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.r),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(40.h),
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
                    //  GoRouter.of(context).pushNamed(AppRoutes.resetpasswordscreen);
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
