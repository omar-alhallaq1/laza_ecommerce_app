import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  final TextEditingController nameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    countryController.dispose();
    cityController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }

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

                  /// Name
                  Text(
                    "Name",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    hintText: "Mrh Raju",
                    controller: nameController,
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    width: double.infinity,
                  ),

                  Gap(15.h),

                  /// Country & City
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
                            controller: countryController,
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
                            controller: cityController,
                            isPassword: false,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Gap(15.h),

                  /// Phone
                  Text(
                    "Phone",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    width: double.infinity,
                    hintText: "01712345678",
                    controller: phoneController,
                    isPassword: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                  ),

                  Gap(15.h),

                  /// Address Details
                  Text(
                    "Address",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    width: double.infinity,
                    hintText: "Chhatak, Sunamgonj 12/8AB",
                    controller: addressController,
                    isPassword: false,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.streetAddress,
                  ),

                  Gap(20.h),

                  /// Switch
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
                          onChanged: (value) {
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
                debugPrint("Name: ${nameController.text}");
                debugPrint("Country: ${countryController.text}");
                debugPrint("City: ${cityController.text}");
                debugPrint("Phone: ${phoneController.text}");
                debugPrint("Address: ${addressController.text}");
                debugPrint("Primary: $_isRemembered");

                // GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
