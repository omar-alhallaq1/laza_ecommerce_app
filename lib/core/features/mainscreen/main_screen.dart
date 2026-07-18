import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_ecommerce_app/core/features/card_page_screen/card_page_screen.dart';
import 'package:laza_ecommerce_app/core/features/cart_screen/cart_screen.dart';
import 'package:laza_ecommerce_app/core/features/home_screen/home_screen.dart';
import 'package:laza_ecommerce_app/core/styling/app_assets.dart';
import 'package:laza_ecommerce_app/core/styling/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Container(),
    CartScreen(),
    CardsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffFFFFFF),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primarycolor,
          unselectedItemColor: AppColors.graycolor,
          currentIndex: selectedIndex,

          // لكي نتحكم بظهور واختفاء النصوص الافتراضية
          showSelectedLabels: false,
          showUnselectedLabels: false,

          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            // 1. Home Item
            BottomNavigationBarItem(
              icon: selectedIndex == 0
                  ? Text(
                      'Home',
                      style: TextStyle(
                        color: AppColors.primarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    )
                  : SvgPicture.asset(
                      AppAssets.homesvg,
                      height: 24.h,
                      width: 24.w,
                    ),
              label: '', // نتركه فارغاً لأننا نتحكم بالـ icon مباشرة
            ),

            // 2. Cart Item (أو أيقونة الـ Heart بناءً على تصميمك)
            BottomNavigationBarItem(
              icon: selectedIndex == 1
                  ? Text(
                      'Favorites',
                      style: TextStyle(
                        color: AppColors.primarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    )
                  : SvgPicture.asset(
                      AppAssets.heartsvg,
                      height: 24.h,
                      width: 24.w,
                    ),
              label: '',
            ),

            // 3. Account Item
            BottomNavigationBarItem(
              icon: selectedIndex == 2
                  ? Text(
                      'Cart',
                      style: TextStyle(
                        color: AppColors.primarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    )
                  : SvgPicture.asset(
                      AppAssets.bagsvg,
                      height: 24.h,
                      width: 24.w,
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? Text(
                      'Paments',
                      style: TextStyle(
                        color: AppColors.primarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    )
                  : SvgPicture.asset(
                      AppAssets.walletsvg,
                      height: 24.h,
                      width: 24.w,
                    ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
