import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field2.dart';

class MastercardFormWidget extends StatelessWidget {
  final TextEditingController ownerController;
  final TextEditingController cardNumberController;
  final TextEditingController expController;
  final TextEditingController cvvController;

  const MastercardFormWidget({
    super.key,
    required this.ownerController,
    required this.cardNumberController,
    required this.expController,
    required this.cvvController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(20.h),

        Text(
          "Card Owner",
          style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
        ),
        Gap(10.h),

        CustomTextField2(
          hintText: "Mrh Raju",
          controller: ownerController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),

        Gap(20.h),

        Text(
          "Card Number",
          style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
        ),
        Gap(10.h),

        CustomTextField2(
          hintText: "5254 7634 8734 7690",
          controller: cardNumberController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        ),

        Gap(20.h),

        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EXP",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),

                  CustomTextField2(
                    hintText: "12/28",
                    controller: expController,
                    keyboardType: TextInputType.datetime,
                    textInputAction: TextInputAction.next,
                  ),
                ],
              ),
            ),

            Gap(15.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CVV",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),

                  CustomTextField2(
                    hintText: "123",
                    controller: cvvController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    isPassword: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
