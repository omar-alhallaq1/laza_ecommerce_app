import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/features/add_new_card_screen/widgets/mastercard_form_widget.dart';
import 'package:laza_ecommerce_app/core/features/add_new_card_screen/widgets/paypal_form_widget.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

enum PaymentType { mastercard, paypal }

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  PaymentType selectedPayment = PaymentType.mastercard;
  final ownerController = TextEditingController();
  final cardNumberController = TextEditingController();
  final expController = TextEditingController();
  final cvvController = TextEditingController();
  final paypalEmailController = TextEditingController();
  @override
  void dispose() {
    ownerController.dispose();
    cardNumberController.dispose();
    expController.dispose();
    cvvController.dispose();
    paypalEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
              child: Row(
                children: [
                  CustomBackButtonWidget(
                    icon: SvgPicture.asset(
                      AppAssets.arrowleft,
                      width: 24.w,
                      height: 24.h,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  Gap(63.w),
                  Text(
                    "Add New Card",
                    style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // خيارات الأزرار العلوية (ماستركارد وباي بال)
                    Row(
                      children: [
                        // زر ماستركارد
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(
                              () => selectedPayment = PaymentType.mastercard,
                            ),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 70.h,
                              decoration: BoxDecoration(
                                color: selectedPayment == PaymentType.mastercard
                                    ? const Color(0xFFFFEFEA)
                                    : const Color(0xFFF5F6FA),
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(
                                  color:
                                      selectedPayment == PaymentType.mastercard
                                      ? const Color(0xFFFF5722)
                                      : Colors.transparent,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  AppAssets.mastercardimage,
                                  width: 40.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.w),

                        // زر باي بال
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(
                              () => selectedPayment = PaymentType.paypal,
                            ),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 70.h,
                              decoration: BoxDecoration(
                                color: selectedPayment == PaymentType.paypal
                                    ? const Color(0xFFEDF2F9)
                                    : const Color(0xFFF5F6FA),
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(
                                  color: selectedPayment == PaymentType.paypal
                                      ? const Color(0xFF003087)
                                      : Colors.transparent,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  AppAssets.paypalimage,
                                  width: 35.w,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),

                    // تبديل الأشكال تلقائياً باستدعاء الويدجتس المنفصلة
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: selectedPayment == PaymentType.mastercard
                          ? MastercardFormWidget(
                              key: const ValueKey('mastercard'),
                              ownerController: ownerController,
                              cardNumberController: cardNumberController,
                              expController: expController,
                              cvvController: cvvController,
                            )
                          : PaypalFormWidget(
                              key: const ValueKey('paypal'),
                              emailController: paypalEmailController,
                            ),
                    ),
                  ],
                ),
              ),
            ),

            PrimaryButtonwidget(
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,
              fontsize: 20.sp,
              buttontext: "Save Card",
              buttoncolor: AppColors.primarycolor,
              textColor: AppColors.whitecolor,
              onpress: () {
                //   GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
