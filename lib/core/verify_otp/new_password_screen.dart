import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
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
                      "New Password",
                      style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Gap(168.h),
                  Text(
                    "Password",
                    style: AppStyles.gry13meduemstyle.copyWith(fontSize: 15.sp),
                  ),
                  Gap(15.h),
                  CustomTextField(hintText: "HJ@#9783kja"),
                  Gap(20.h),
                  Text(
                    "Confirm Password",
                    style: AppStyles.gry13meduemstyle.copyWith(fontSize: 15.sp),
                  ),
                  Gap(15.h),
                  CustomTextField(hintText: "HJ@#9783kja"),
                  Gap(230.h),
                ],
              ),
            ),
            PrimaryButtonwidget(
              buttontext: "Reset Password",
              buttoncolor: AppColors.primarycolor,
              textColor: Colors.white,
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,

              onpress: () {
                // Handle reset password logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
