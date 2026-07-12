import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomRatingSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const CustomRatingSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Star',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Gap(16.h),
        // 2. السطر الأفقي (الأرقام والـ Slider)
        Row(
          children: [
            // الرقم على اليسار 0.0
            Text(
              '0.0',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),

            // الـ Slider يأخذ بقية المساحة في المنتصف
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 12.h, // سُمك المسار الخلفي ليتطابق مع الفيجما
                  activeTrackColor: const Color(0xFFF5F6FA), // لون الجزء النشط
                  inactiveTrackColor: const Color(
                    0xFFF5F6FA,
                  ), // لون الخلفية الرمادية الفاتحة للمسار
                  thumbColor: const Color(
                    0xFF9775FA,
                  ), // اللون البنفسجي للدائرة المتحركة
                  overlayColor: const Color(
                    0xFF9775FA,
                  ).withValues(alpha: 0.2), // الهالة عند الضغط
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 10.r, // حجم الدائرة البنفسجية
                    elevation: 0, // إلغاء الظل ليكون التصميم مسطحاً (Flat)
                  ),
                  trackShape:
                      const RoundedRectSliderTrackShape(), // لجعل حواف المسار دائرية ناعمة
                ),
                child: Slider(
                  value: value,
                  min: 0.0,
                  max: 5.0,
                  divisions:
                      50, // يضمن سلاسة الحركة والتقريب (مثال: 4.1, 4.2...)
                  onChanged: onChanged,
                ),
              ),
            ),

            // الرقم على اليمين 5.0
            Text(
              '5.0',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
