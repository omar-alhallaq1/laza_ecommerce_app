import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field2.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class AdressScreen extends StatefulWidget {
  const AdressScreen({super.key});

  @override
  State<AdressScreen> createState() => _AdressScreenState();
}

class _AdressScreenState extends State<AdressScreen> {
  bool _isRemembered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      Gap(104.w),
                      Text(
                        "Cart",
                        style: AppStyles.black28boldstyle.copyWith(
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                  Gap(25.h),
                  Text(
                    "Name",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    hintText: "Mrh Raju",
                    controller: TextEditingController(),
                    //  validator: (value) {},
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    width: double.infinity,
                  ),
                  Gap(15.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Address",
                            style: AppStyles.black28boldstyle.copyWith(
                              fontSize: 17.sp,
                            ),
                          ),
                          Gap(10.h),
                          CustomTextField2(
                            width: 160.w,
                            hintText: "Bangladesh",
                            controller: TextEditingController(),
                            //  validator: (value) {},
                            isPassword: false,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                      Gap(15.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "City",
                            style: AppStyles.black28boldstyle.copyWith(
                              fontSize: 17.sp,
                            ),
                          ),
                          Gap(10.h),
                          CustomTextField2(
                            width: 160.w,
                            hintText: "Sylhet",
                            controller: TextEditingController(),
                            //  validator: (value) {},
                            isPassword: false,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(15.h),
                  Text(
                    "Phone",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    width: double.infinity,
                    hintText: "01712345678",
                    controller: TextEditingController(),
                    //  validator: (value) {},
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                  ),
                  Gap(15.h),
                  Text(
                    "Address",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    width: double.infinity,
                    hintText: "Chhatak, Sunamgonj 12/8AB",
                    controller: TextEditingController(),
                    //  validator: (value) {},
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                  ),
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Save as primary address",
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
                ],
              ),
            ),
            Gap(216.h),
            PrimaryButtonwidget(
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,
              fontsize: 20.sp,
              buttontext: "Save Address",
              buttoncolor: AppColors.primarycolor,
              textColor: AppColors.whitecolor,
              onpress: () {
                //  GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
