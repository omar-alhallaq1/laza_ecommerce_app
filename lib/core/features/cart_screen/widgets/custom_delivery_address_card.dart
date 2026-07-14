import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';
import 'package:laza_ecommerce_app/core/styling/app_styles.dart';

class InfoCardWidget extends StatelessWidget {
  final String sectionTitle;
  final String title;
  final String subtitle;
  final String imageUrl;
  final bool showPinIcon;
  final bool isSelected;
  final VoidCallback? onTap;

  const InfoCardWidget({
    super.key,
    required this.sectionTitle,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.showPinIcon = false, // القيمة الافتراضية false عشان لو فيزا ما تظهرش
    this.isSelected = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              sectionTitle,
              style: AppStyles.black28boldstyle.copyWith(fontSize: 17.sp),
            ),
            const Spacer(),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(20.r),
                child: Padding(
                  padding: EdgeInsets.all(6.w),
                  child: SvgPicture.asset(
                    AppAssets.arrowright,
                    width: 16.w,
                    height: 16.h,
                  ),
                ),
              ),
            ),
          ],
        ),

        Gap(18.h),

        // 2. كرت التفاصيل السفلي
        Row(
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                  image: AssetImage(imageUrl), // عرض صورة الخريطة أو الفيزا
                  fit: BoxFit.cover,
                ),
              ),
              // الفحص: إذا showPinIcon بـ true، اعرض الدائرة البرتقالية، وإذا false حط كونتينر فارغ بحجم صفر
              child: showPinIcon
                  ? Center(
                      child: Container(
                        width: 24.w,
                        height: 24.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.orangecolor,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppAssets.locationsvg,
                            width: 12.w,
                            height: 12.h,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),

            Gap(16.w),

            // تفاصيل النصوص
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.black28boldstyle.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(4.h),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.gry13meduemstyle.copyWith(fontSize: 13.sp),
                  ),
                ],
              ),
            ),

            Gap(12.w),

            // 3. علامة الصح في حال كان الكرت مختاراً
            if (isSelected)
              Container(
                width: 25.w,
                height: 25.h,
                decoration: const BoxDecoration(
                  color: AppColors.green,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.checksvg,
                    width: 12.w,
                    height: 12.h,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
