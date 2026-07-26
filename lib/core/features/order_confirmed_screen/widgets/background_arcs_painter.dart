import 'package:flutter/material.dart';

class BackgroundArcsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE8DEFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // ارفع مركز الدوائر للأعلى
    final center = Offset(size.width / 2, size.height * 0.72);

    final radii = [size.width * 0.40, size.width * 0.60, size.width * 0.78];

    for (final radius in radii) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        3.14159, // 180°
        3.14159, // ارسم نصف دائرة فقط
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
