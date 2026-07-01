import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';

class RouterGanretionConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splashScreen,
    routes: [
      GoRoute(
        name: AppRoutes.splashScreen,
        path: AppRoutes.splashScreen,

        builder: (context, state) => Container(),
      ),
      GoRoute(
        name: AppRoutes.loginscreen,
        path: AppRoutes.loginscreen,

        builder: (context, state) => Container(),
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
