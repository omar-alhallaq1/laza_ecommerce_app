import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/widgets/product_details_header.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/widgets/product_image_gallery.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProductDetailHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: Column(
              children: [
                Gap(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. العمود الأيسر (القسم + الاسم)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Men's Printed Pullover Hoodie",
                            style: AppStyles.gry13meduemstyle,
                          ),
                          const Gap(8), // تباعد رأسي خفيف بين الكلمتين
                          Text(
                            'Nike Club Fleece',
                            style: AppStyles.black13boldstyle.copyWith(
                              fontSize: 22.sp,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Gap(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price', style: AppStyles.gry13meduemstyle),
                        Gap(8),
                        Text(
                          '\$120',
                          style: AppStyles.black13boldstyle.copyWith(
                            fontSize: 22.sp,
                          ),
                        ),
                        Gap(21.h),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: List.generate(
                    4,
                    (index) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: index == 3 ? 0 : 12.w),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedImageIndex = index;
                            });
                          },
                          child: ProductImageThumb(
                            imageUrl: '',
                            isSelected: selectedImageIndex == index,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(15.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Size',
                      style: AppStyles.black28boldstyle.copyWith(
                        fontSize: 17.sp,
                      ),
                    ),
                    Gap(8.w),
                    Text(
                      'Size Guide',
                      style: AppStyles.gry13meduemstyle.copyWith(
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                //                 Row(
                //   children: List.generate(
                //     sizes.length,
                //     (index) => Expanded(
                //       child: Padding(
                //         padding: EdgeInsets.only(
                //           right: index == sizes.length - 1 ? 0 : 12.w,
                //         ),
                //         child: SizeItem(
                //           title: sizes[index],
                //           isSelected: index == 0,
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
