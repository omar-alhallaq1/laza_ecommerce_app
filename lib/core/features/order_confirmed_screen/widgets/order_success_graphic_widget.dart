import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/features/order_confirmed_screen/widgets/background_arcs_painter.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';

class OrderSuccessGraphic extends StatelessWidget {
  const OrderSuccessGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery للحصول على ارتفاع الشاشة لجعل التصميم متجاوباً
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.35,
      width: double.infinity,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(child: CustomPaint(painter: BackgroundArcsPainter())),
          Image.asset(
            AppAssets.orderconfirmedimage,
            height: screenHeight * 0.3,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.phone_android, size: 50, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
