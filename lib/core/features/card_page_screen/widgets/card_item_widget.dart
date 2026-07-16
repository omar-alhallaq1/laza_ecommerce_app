import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class CardItemWidget extends StatelessWidget {
  final String cardHolder;
  final String cardType;
  final String cardNumber;
  final String balance;

  const CardItemWidget({
    super.key,
    required this.cardHolder,
    required this.cardType,
    required this.cardNumber,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 190.h,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      child: Stack(
        children: [
          /// Background
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primarycolor,
              borderRadius: BorderRadius.circular(24.r),
            ),
          ),

          /// Layer 1
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.layar1,
              width: 250.w,
              fit: BoxFit.contain,
            ),
          ),

          /// Layer 2
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.layer2,
              width: 220.w,
              fit: BoxFit.contain,
            ),
          ),

          /// Layer 3
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AppAssets.layer3,
              width: 190.w,
              fit: BoxFit.contain,
            ),
          ),

          /// Holder Name
          Positioned(
            top: 22.h,
            left: 22.w,
            child: Text(
              cardHolder,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 22.sp,
              ),
            ),
          ),

          /// Visa
          Positioned(
            top: 22.h,
            right: 22.w,
            child: Text(
              "VISA",
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),

          /// Card Type
          Positioned(
            left: 22.w,
            top: 88.h,
            child: Text(
              cardType,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 18.sp,
              ),
            ),
          ),

          /// Card Number
          Positioned(
            left: 22.w,
            bottom: 58.h,
            child: Text(
              cardNumber,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 20.sp,
                letterSpacing: 2,
              ),
            ),
          ),

          /// Balance
          Positioned(
            left: 22.w,
            bottom: 18.h,
            child: Text(
              balance,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 28.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
