import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/features/cart_screen/widgets/custom_cart_item_card.dart';
import 'package:laza_ecommerce_app/core/features/cart_screen/widgets/custom_delivery_address_card.dart';
import 'package:laza_ecommerce_app/core/features/cart_screen/widgets/custom_order_info_section.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_back_button_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
                        "Cart",
                        style: AppStyles.black28boldstyle.copyWith(
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                  Gap(20.h),
                  CartItemCard(
                    imageUrl: AppAssets.onbording,
                    title: "Men's Tie-Dye T-Shirt Nike Sportswear",
                    priceText: "\$45 (-\$4.00 Tax)",
                    quantity: 1,
                    onIncrement: () {},
                    onDecrement: () {},
                    onDelete: () {},
                  ),
                  Gap(20.h),
                  CartItemCard(
                    imageUrl: AppAssets.onbording,
                    title: "Men's Tie-Dye T-Shirt Nike Sportswear",
                    priceText: "\$45 (-\$4.00 Tax)",
                    quantity: 1,
                    onIncrement: () {},
                    onDecrement: () {},
                    onDelete: () {},
                  ),
                  Gap(20.h),
                  InfoCardWidget(
                    sectionTitle: "Delivery Address",
                    title: "Chhatak, Sunamgonj 12/8AB",
                    subtitle: "Sylhet",
                    imageUrl: AppAssets.mapimage,
                    showPinIcon: true,
                    onTap: () {},
                  ),
                  Gap(20.h),
                  InfoCardWidget(
                    sectionTitle: "Payment Method",
                    title: "Visa Card ending in 4242",
                    subtitle: "Exp: 12/26",
                    imageUrl: AppAssets.vicaimage,
                    showPinIcon: false,

                    onTap: () {},
                  ),
                  Gap(20.h),

                  OrderInfoSection(subtotal: 110.0, shippingCost: 10.0),
                ],
              ),
            ),
            Gap(24.h),
            PrimaryButtonwidget(
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,
              fontsize: 20.sp,
              buttontext: "Checkout",
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
