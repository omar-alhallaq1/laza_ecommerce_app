import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_ecommerce_app/core/features/home_screen/widgets/custom_icon_button.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';

class ProductDetailHeader extends StatelessWidget {
  final String? imageUrl; // الروابط ستكون Nullable حالياً لوقت ربط الـ API

  const ProductDetailHeader({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl != null && imageUrl!.isNotEmpty;

    return Stack(
      children: [
        // 1. حاوية الصورة (الخلفية الرمادية الحالية)
        Container(
          height: 342.h,
          width: double.infinity,
          color: const Color(0xFFF5F6F8),
          child: hasImage
              ? Image.network(imageUrl!, fit: BoxFit.cover)
              : const Center(
                  child: Icon(
                    Icons.image_outlined,
                    size: 80,
                    color: Colors.grey,
                  ),
                ),
        ),
        Positioned(
          top: 45.h,
          left: 20.w,
          child: CustomIconButton(
            onTap: () {},
            icon: SvgPicture.asset(
              AppAssets.arrowleft,
              width: 24.w,
              height: 24.h,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Positioned(
          top: 45.h,
          right: 20.w,
          child: CustomIconButton(
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
        ),
        // 2. دائرة لوجو نايكي القاطعة للحافة السفلية
        // Positioned(
        //   bottom:
        //       -35, // دفع نصف الدائرة (35 من أصل 70) خارج حدود الصورة لأسفل ليقطع الحافة تماماً
        //   child: Container(
        //     width: 70,
        //     height: 70,
        //     decoration: const BoxDecoration(
        //       color: Color(0xFFEFEFEF), // لون خلفية اللوجو
        //       shape: BoxShape.circle,
        //     ),
        //     child: const Center(
        //       child: Icon(
        //         Icons.bolt, // ستستبدلها بـ SvgPicture الخاص بلوجو نايكي لاحقاً
        //         size: 35,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
