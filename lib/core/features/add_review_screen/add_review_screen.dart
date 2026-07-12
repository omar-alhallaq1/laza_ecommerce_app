import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/features/add_review_screen/widgets/custom_rating_slider.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field2.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController reviewController = TextEditingController();
  double currentRating = 2.50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(45.h),
                    Row(
                      children: [
                        CustomBackButtonWidget(
                          icon: SvgPicture.asset(
                            AppAssets.arrowleft,
                            width: 24.w,
                            height: 24.h,
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                        Gap(92.w),
                        Text(
                          "Reviews",
                          style: AppStyles.black28boldstyle.copyWith(
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),
                    Gap(25.h),
                    Text(
                      "Name",
                      style: AppStyles.black28boldstyle.copyWith(
                        fontSize: 17.sp,
                      ),
                    ),
                    Gap(10.h),
                    CustomTextField2(
                      hintText: "Enter your name",
                      width: 335.w,
                      controller: nameController,
                      // validator: (value) {

                      // },
                    ),
                    Gap(20.h),
                    Text(
                      "How was your experience ?",
                      style: AppStyles.black28boldstyle.copyWith(
                        fontSize: 17.sp,
                      ),
                    ),
                    Gap(10.h),
                    CustomTextField2(
                      hintText: "Describe your experience?",
                      controller: reviewController,
                      validator: (value) {},
                      width: 335.w,
                      maxLines: 7,
                    ),
                    Gap(20.h),
                    CustomRatingSlider(
                      value: currentRating,
                      onChanged: (newValue) {
                        setState(() {
                          currentRating =
                              newValue; // تحديث القيمة فوراً عند التحريك
                        });
                      },
                    ),
                  ],
                ),
              ),
              Gap(210.h),
              PrimaryButtonwidget(
                width: double.infinity,
                height: 75.h,
                borderradius: 0.r,
                fontsize: 20.sp,
                buttontext: "submit review",
                buttoncolor: AppColors.primarycolor,
                textColor: AppColors.whitecolor,
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    // API لاحقاً
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
