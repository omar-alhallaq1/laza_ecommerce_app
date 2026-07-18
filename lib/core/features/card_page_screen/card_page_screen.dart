import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// قم بتغيير هذا المسار ليتوافق مع مكان ملف الـ CarouselWidget لديك
import 'package:laza_ecommerce_app/core/features/card_page_screen/widgets/carousel_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // يمكنك إضافة AppBar إذا كان التصميم يحتوي على عنوان صفحة
      appBar: AppBar(
        title: const Text("Payment Cards"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // لحماية الشاشة من مشاكل Overflow إذا أضفت عناصر أخرى تحت الكروت
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // استدعاء الـ Carousel الذي يحتوي على الـ Slider والنقاط
                const CarouselWidget(),

                SizedBox(height: 30.h),

                // هنا يمكنك لاحقاً إضافة باقي عناصر الصفحة مثل زر "Add new card" أو قائمة العمليات الأخيرة
              ],
            ),
          ),
        ),
      ),
    );
  }
}
