import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce_app/core/auth/login_screen.dart';
import 'package:laza_ecommerce_app/core/auth/signup_screen.dart';
import 'package:laza_ecommerce_app/core/features/add_review_screen/add_review_screen.dart';
import 'package:laza_ecommerce_app/core/features/address_screen/adress_screen.dart';
import 'package:laza_ecommerce_app/core/features/mainscreen/main_screen.dart';
import 'package:laza_ecommerce_app/core/features/onboarding_screen/onboarbing_screen.dart';
import 'package:laza_ecommerce_app/core/features/product_details_screen/product_details_screen.dart';
import 'package:laza_ecommerce_app/core/features/reviews_screen/reviews_screen.dart';
import 'package:laza_ecommerce_app/core/features/started_screen/started_screen.dart';
import 'package:laza_ecommerce_app/core/routing/app_routes.dart';
import 'package:laza_ecommerce_app/core/verify_otp/forgot_password_screen.dart';
import 'package:laza_ecommerce_app/core/verify_otp/new_password_screen.dart';
import 'package:laza_ecommerce_app/core/verify_otp/verification_code_screen.dart';

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

        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        name: AppRoutes.startedscreen,
        path: AppRoutes.startedscreen,

        builder: (context, state) => const StartedScreen(),
      ),
      GoRoute(
        name: AppRoutes.forgotpasswordscreen,
        path: AppRoutes.forgotpasswordscreen,

        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        name: AppRoutes.verificationcodeScreen,
        path: AppRoutes.verificationcodeScreen,

        builder: (context, state) => const VerificationCodeScreen(),
      ),
      GoRoute(
        name: AppRoutes.ceatenewpasswordScreen,
        path: AppRoutes.ceatenewpasswordScreen,

        builder: (context, state) => const NewPasswordScreen(),
      ),
      GoRoute(
        name: AppRoutes.mainscreen,
        path: AppRoutes.mainscreen,

        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        name: AppRoutes.productDetailsScreen,
        path: AppRoutes.productDetailsScreen,

        builder: (context, state) => const ProductDetailsScreen(),
      ),
      GoRoute(
        name: AppRoutes.reviewsScreen,
        path: AppRoutes.reviewsScreen,

        builder: (context, state) => const ReviewsScreen(),
      ),
      GoRoute(
        name: AppRoutes.addreviewsscreen,
        path: AppRoutes.addreviewsscreen,

        builder: (context, state) => const AddReviewScreen(),
      ),
      GoRoute(
        name: AppRoutes.addressscreen,
        path: AppRoutes.addressscreen,

        builder: (context, state) => const AdressScreen(),
      ),
    ],
  );
}
