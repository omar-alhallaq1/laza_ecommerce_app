import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/features/home_screen/widgets/brand_card.dart';
import 'package:laza_ecommerce_app/core/features/home_screen/widgets/custom_icon_button.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(45.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  onTap: () {},
                  icon: SvgPicture.asset(
                    AppAssets.menusvg,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                CustomIconButton(
                  onTap: () {},
                  icon: SvgPicture.asset(
                    AppAssets.bagsvg,
                    width: 24.w,
                    height: 24.h,
                    colorFilter: const ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),

            Gap(20.h),

            Text('Hello', style: AppStyles.black28boldstyle),

            Gap(5.h),

            Text(
              'Welcome to Laza.',
              style: AppStyles.gry13meduemstyle.copyWith(fontSize: 15.sp),
            ),

            Gap(20.h),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: AppColors.graycolor,
                          fontSize: 15.sp,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15.w),
                          child: SvgPicture.asset(
                            AppAssets.searchsvg,
                            colorFilter: ColorFilter.mode(
                              AppColors.graycolor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 50.w,
                    height: 50.h,
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: AppColors.primarycolor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: SvgPicture.asset(
                      AppAssets.voicesvg,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Gap(20.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Brand',
                  style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
                ),
                Text('View All', style: AppStyles.gry13meduemstyle),
              ],
            ),

            Gap(15.h),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BrandCardItem(name: 'Adidas', logoUrl: '', onTap: () {}),
                  SizedBox(width: 12.w),

                  BrandCardItem(name: 'Nike', logoUrl: '', onTap: () {}),
                  SizedBox(width: 12.w),

                  BrandCardItem(name: 'Fila', logoUrl: '', onTap: () {}),
                  SizedBox(width: 12.w),

                  BrandCardItem(name: 'Puma', logoUrl: '', onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
