import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 28.r, child: const Icon(Icons.person)),

        SizedBox(width: 15.w),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mrh Raju",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),

              SizedBox(height: 5.h),

              const Text("Verified Profile"),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: const Text("3 Orders"),
        ),
      ],
    );
  }
}
