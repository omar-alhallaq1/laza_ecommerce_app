import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field2.dart';

class PaypalFormWidget extends StatelessWidget {
  final TextEditingController emailController;
  const PaypalFormWidget({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(20.h),
        Text(
          "PayPal Email",
          style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
        ),
        Gap(10.h),
        CustomTextField2(
          controller: emailController,
          hintText: "example@gmail.com",
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
