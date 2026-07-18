import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/features/card_page_screen/widgets/card_item_widget.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: const [
            CardItemWidget(
              cardHolder: "Mrh Raju",
              cardType: "Visa Classic",
              cardNumber: "5254 **** **** 7690",
              balance: "\$3,763.87",
              bgLayer1: AppAssets.vector1,
              bgLayer2: AppAssets.vector2,
              bgLayer3: AppAssets.vector3,
            ),
            CardItemWidget(
              cardHolder: "Mrh Raju",
              cardType: "Visa Classic",
              cardNumber: "5254 **** **** 7690",
              balance: "\$3,763.87",
              bgLayer1: AppAssets.vector1,
              bgLayer2: AppAssets.vector2,
              bgLayer3: AppAssets.vector3,
            ),
            CardItemWidget(
              cardHolder: "Mrh Raju",
              cardType: "Visa Classic",
              cardNumber: "5254 **** **** 7690",
              balance: "\$3,763.87",
              bgLayer1: AppAssets.vector1,
              bgLayer2: AppAssets.vector2,
              bgLayer3: AppAssets.vector3,
            ),
          ],
          options: CarouselOptions(
            height: 200.h,
            viewportFraction: .80,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),

        SizedBox(height: 18.h),

        DotsIndicator(
          dotsCount: 3,
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: AppColors.primarycolor,
            color: Colors.grey.shade300,
            activeSize: Size(20.w, 8.h),
            size: Size(8.w, 8.h),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
      ],
    );
  }
}
