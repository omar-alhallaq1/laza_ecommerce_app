import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/widgets/custom_size_item.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/widgets/product_details_header.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/widgets/product_image_gallery.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/widgets/product_review_card.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';
import 'package:laza_ecommerce_app/core/wedgets/primary_button_wedgit.dart';
import 'package:readmore/readmore.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                            Gap(8),
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
                          padding: EdgeInsets.only(
                            right: index == 3 ? 0 : 12.w,
                          ),
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
                  Gap(10.h),
                  Row(
                    children: [
                      Expanded(
                        child: SizeCardItem(size: 'S', onTap: () {}),
                      ),
                      const Gap(10),
                      Expanded(
                        child: SizeCardItem(size: 'M', onTap: () {}),
                      ),
                      const Gap(10),
                      Expanded(
                        child: SizeCardItem(size: 'L', onTap: () {}),
                      ),
                      const Gap(10),
                      Expanded(
                        child: SizeCardItem(size: 'XL', onTap: () {}),
                      ),
                    ],
                  ),
                  Gap(20.h),
                  ReadMoreText(
                    'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with comfort and everyday versatility.',
                    trimLines: 3, // عدد الأسطر اللي تظهر قبل ما يقص النص
                    colorClickableText: Colors.black, // لون كلمة Read more
                    trimMode: TrimMode.Line, // القص يكون بناءً على عدد الأسطر
                    trimCollapsedText:
                        'Read More..', // النص اللي بيظهر والنص مقصوص
                    trimExpandedText:
                        ' Show Less', // النص اللي بيظهر لما تفتح الوصف كامل
                    style: AppStyles.gry13meduemstyle.copyWith(
                      fontSize: 15.sp,
                      height: 1.4.sp,
                    ),
                    moreStyle: AppStyles.black16w500style.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    lessStyle: AppStyles.black16w500style.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reviews',
                        style: AppStyles.black28boldstyle.copyWith(
                          fontSize: 17.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View All',
                          style: AppStyles.gry13meduemstyle,
                        ),
                      ),
                    ],
                  ),
                  Gap(8.w),
                  ProductReviewCard(
                    name: 'Ronald Richards',
                    date: '13 Sep, 2020',
                    rating: 4.5,
                    comment:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                  ),
                  Gap(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // العمود الأيسر (العناوين)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Gap(4.h),
                          Text(
                            'with VAT,SD',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '\$125',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            PrimaryButtonwidget(
              width: double.infinity,
              height: 75.h,
              borderradius: 0.r,
              fontsize: 20.sp,
              buttontext: "Add to Cart",
              buttoncolor: AppColors.primarycolor,
              textColor: AppColors.whitecolor,
              onpress: () {
                GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
