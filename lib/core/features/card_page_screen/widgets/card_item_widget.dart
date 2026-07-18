import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class CardItemWidget extends StatelessWidget {
  final String cardHolder;
  final String cardType;
  final String cardNumber;
  final String balance;
  final String bgLayer1;
  final String bgLayer2;
  final String bgLayer3;

  const CardItemWidget({
    super.key,
    required this.cardHolder,
    required this.cardType,
    required this.cardNumber,
    required this.balance,
    required this.bgLayer1,
    required this.bgLayer2,
    required this.bgLayer3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 190.h,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.r)),
      child: Stack(
        children: [
          /// Layer 1: الخلفية الأساسية للكرت
          Positioned.fill(
            child: Image.asset(
              bgLayer1,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const SizedBox(),
            ),
          ),

          /// Layer 2: المنحنى السفلي والأيس
          Positioned(
            bottom: 0,
            left: 0,
            width: 325.w,
            height: 125.h,
            child: Image.asset(
              bgLayer2,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) => const SizedBox(),
            ),
          ),

          /// Layer 3: المنحنى القطري الأيمن
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            width: 270.w,
            child: Image.asset(
              bgLayer3,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) => const SizedBox(),
            ),
          ),

          Positioned(
            top: 22.h,
            left: 22.w,
            child: Text(
              cardHolder,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 20.sp,
              ),
            ),
          ),
          Positioned(
            top: 22.h,
            right: 22.w,
            child: Text(
              cardType.toLowerCase().contains('visa') ? "VISA" : "MC",
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 20.sp,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Positioned(
            left: 22.w,
            top: 85.h,
            child: Text(
              cardType,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
          ),
          Positioned(
            left: 22.w,
            bottom: 55.h,
            child: Text(
              cardNumber,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 18.sp,
                letterSpacing: 2,
              ),
            ),
          ),
          Positioned(
            left: 22.w,
            bottom: 18.h,
            child: Text(
              balance,
              style: AppStyles.black28boldstyle.copyWith(
                color: Colors.white,
                fontSize: 26.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
