import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/auth/login_screen.dart';
import 'package:laza_ecommerce_app/core/features/onboarding_screen/onboarbing_screen.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';

class RouterGanretionConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onboardingScreen,
    routes: [
      GoRoute(
        name: AppRoutes.onboardingScreen,
        path: AppRoutes.onboardingScreen,

        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        name: AppRoutes.loginscreen,
        path: AppRoutes.loginscreen,

        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: AppRoutes.signupscreen,
        path: AppRoutes.signupscreen,

        builder: (context, state) => Container(),
      ),
      GoRoute(
        name: AppRoutes.mainScreen,
        path: AppRoutes.mainScreen,

        builder: (context, state) => Container(),
      ),
      GoRoute(
        name: AppRoutes.productdetailsScreen,
        path: AppRoutes.productdetailsScreen,

        builder: (context, state) => Container(),
      ),
      GoRoute(
        name: AppRoutes.adressScreen,
        path: AppRoutes.adressScreen,

        builder: (context, state) => Container(),
      ),
    ],
  );
}
