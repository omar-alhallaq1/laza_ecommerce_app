import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandCardItem extends StatelessWidget {
  final String name;
  final String logoUrl;
  final VoidCallback onTap;

  const BrandCardItem({
    super.key,
    required this.name,
    required this.logoUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: const Color(0xFFF6F7F9),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Colors.grey.shade300, width: .8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 44.w,
              height: 44.w,
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: logoUrl.isEmpty
                  ? const Icon(Icons.image, color: Colors.grey)
                  : CachedNetworkImage(
                      imageUrl: logoUrl,
                      fit: BoxFit.contain,
                      placeholder: (context, url) => const Center(
                        child: SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.image_not_supported),
                    ),
            ),
            SizedBox(width: 12.w),
            Text(
              name,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
