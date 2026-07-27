import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/menu_header.dart';
import 'widgets/menu_item.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300.w,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              const MenuHeader(),

              SizedBox(height: 35.h),

              MenuItem(
                icon: const Icon(Icons.person_outline),
                title: "Account Information",
                onTap: () {},
              ),

              MenuItem(
                icon: const Icon(Icons.lock_outline),
                title: "Password",
                onTap: () {},
              ),

              MenuItem(
                icon: const Icon(Icons.shopping_bag_outlined),
                title: "Order",
                onTap: () {},
              ),

              MenuItem(
                icon: const Icon(Icons.favorite_border),
                title: "Wishlist",
                onTap: () {},
              ),

              MenuItem(
                icon: const Icon(Icons.settings_outlined),
                title: "Settings",
                onTap: () {},
              ),

              MenuItem(
                icon: const Icon(Icons.dark_mode_outlined),
                title: "Dark Mode",
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
                onTap: () {},
              ),

              const Spacer(),

              MenuItem(
                icon: const Icon(Icons.logout, color: Colors.red),
                title: "Logout",
                textColor: Colors.red,
                onTap: () {},
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
