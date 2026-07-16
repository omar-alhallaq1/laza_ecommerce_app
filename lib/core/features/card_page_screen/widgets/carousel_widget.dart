import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/features/card_page_screen/widgets/card_item_widget.dart';
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
            ),
            CardItemWidget(
              cardHolder: "Ahmed Ali",
              cardType: "Master Card",
              cardNumber: "4321 **** **** 1234",
              balance: "\$5,100.50",
            ),
            CardItemWidget(
              cardHolder: "Omar Ibrahim",
              cardType: "Visa Gold",
              cardNumber: "1111 **** **** 9999",
              balance: "\$8,950.00",
            ),
          ],
          options: CarouselOptions(
            height: 200.h,
            viewportFraction: .92,
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
