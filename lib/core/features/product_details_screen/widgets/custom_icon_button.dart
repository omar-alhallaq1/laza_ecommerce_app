import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;

  const CustomIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 45.w,
        height: 45.h,
        padding: EdgeInsets.all(10.w),
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
