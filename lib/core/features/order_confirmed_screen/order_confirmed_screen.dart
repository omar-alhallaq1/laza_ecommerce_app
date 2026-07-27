import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/features/order_confirmed_screen/widgets/order_success_graphic_widget.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Gap(45.h),
                  CustomBackButtonWidget(
                    icon: SvgPicture.asset(
                      AppAssets.arrowleft,
                      width: 24.w,
                      height: 24.h,
                    ),
                    onTap: () {},
                  ),
                  Gap(106.h),
                  OrderSuccessGraphic(),
                  Gap(40.h),
                  Text(
                    "Your order is confirmed",
                    style: AppStyles.black28boldstyle,
                    textAlign: TextAlign.center,
                  ),
                  Gap(10.h),
                  Text(
                    "We've sent you an email with all the details of your order.",
                    textAlign: TextAlign.center,
                    style: AppStyles.gry13meduemstyle.copyWith(fontSize: 15.sp),
                  ),
                  Gap(106.h),
                  PrimaryButtonwidget(
                    width: 335.w,
                    height: 56.h,
                    onpress: () {},
                    buttontext: "Go to Home",
                    textColor: AppColors.graycolor,
                    buttoncolor: AppColors.lightgray,
                  ),
                ],
              ),
            ),
            Gap(30.h),
            PrimaryButtonwidget(
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,
              fontsize: 20.sp,
              buttontext: "Continue Shopping",
              buttoncolor: AppColors.primarycolor,
              textColor: AppColors.whitecolor,
              onpress: () {
                GoRouter.of(context).pushNamed(AppRoutes.homeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
