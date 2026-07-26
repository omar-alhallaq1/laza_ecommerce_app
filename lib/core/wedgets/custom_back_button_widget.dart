import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButtonWidget extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;

  const CustomBackButtonWidget({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () => GoRouter.of(context).pop(),
      borderRadius: BorderRadius.circular(45),
      child: Container(
        width: 45,
        height: 45,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Center(child: icon),
      ),
    );
  }
}
