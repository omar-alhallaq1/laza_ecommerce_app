import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/features/card_page_screen/widgets/carousel_widget.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field2.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  final TextEditingController cardOwnerController = TextEditingController();

  final TextEditingController cardNumberController = TextEditingController();

  final TextEditingController expController = TextEditingController();

  final TextEditingController cvvController = TextEditingController();

  @override
  void dispose() {
    cardOwnerController.dispose();
    cardNumberController.dispose();
    expController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                      Gap(104.w),
                      Text(
                        "Payment",
                        style: AppStyles.black28boldstyle.copyWith(
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                  Gap(25.h),
                  CarouselWidget(),
                  Gap(15.h),
                  OutlinedButton(
                    onPressed: () {
                      GoRouter.of(
                        context,
                      ).pushNamed(AppRoutes.addNewCardScreen);
                    },
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(325.w, 50.h),
                      backgroundColor: const Color(0xffF6F2FF),
                      side: BorderSide(color: AppColors.primarycolor, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.plussvg,
                          width: 15.w,
                          height: 15.h,
                          colorFilter: ColorFilter.mode(
                            AppColors.primarycolor,
                            BlendMode.srcIn,
                          ),
                        ),
                        Gap(8.w),
                        Text(
                          "Add new card",
                          style: TextStyle(
                            color: const Color(0xFF9E7BFF),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(20.h),
                  Text(
                    "Card Owner",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    controller: cardOwnerController,
                    hintText: "Mrh Raju",
                    isPassword: false,
                    width: 325.w,
                    //  validator: (value) {},
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                  Gap(15.h),
                  Text(
                    "Card Number",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                  Gap(10.h),
                  CustomTextField2(
                    controller: cardNumberController,
                    hintText: "0000 0000 0000 0000",
                    isPassword: false,
                    width: 325.w,
                    //  validator: (value) {},
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                  ),
                  Gap(15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EXP",
                            style: AppStyles.black28boldstyle.copyWith(
                              fontSize: 17.sp,
                            ),
                          ),
                          Gap(10.h),
                          CustomTextField2(
                            controller: expController,
                            hintText: "MM/YY",
                            isPassword: false,
                            width: 160.w,
                            //  validator: (value) {},
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV",
                            style: AppStyles.black28boldstyle.copyWith(
                              fontSize: 17.sp,
                            ),
                          ),
                          Gap(10.h),
                          CustomTextField2(
                            controller: cvvController,
                            hintText: "CVV",
                            isPassword: false,
                            width: 160.w,
                            //  validator: (value) {},
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(85.h),
            PrimaryButtonwidget(
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,
              fontsize: 20.sp,
              buttontext: "Save Card",
              buttoncolor: AppColors.primarycolor,
              textColor: AppColors.whitecolor,
              onpress: () {
                // GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
