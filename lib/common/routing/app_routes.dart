import 'package:e_learning/features/auth/ui/views/reset_password_view.dart';
import 'package:e_learning/features/auth/ui/views/sign_up_view.dart';
import 'package:e_learning/features/auth/ui/views/unlock_view.dart';
import 'package:e_learning/features/intro/ui/views/on_boarding_view.dart';
import 'package:e_learning/features/layout/inbox/ui/views/inbox_view.dart';
import 'package:e_learning/features/splash/ui/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/views/sign_in_view.dart';
import '../../features/layout/home/ui/views/home_view.dart';
import '../../features/layout/home/ui/views/notifications_view.dart';

class AppRouter {
  static String splashView = '/';
  static String homeView = '/homeView';
  static String onBoardingView = '/onBoardingView';
  static String unlockView = '/unlockView';
  static String signInView = '/signInView';
  static String signUpView = '/signUpView';
  static String resetPasswordView = '/resetPasswordView';
  static String inboxView = '/inboxView';
  static String notificationsView = '/notificationsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: signInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: resetPasswordView,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: unlockView,
        builder: (context, state) => const UnlockView(),
      ),
      GoRoute(
        path: inboxView,
        builder: (context, state) => const InboxView(),
      ),
      GoRoute(
        path: notificationsView,
        builder: (context, state) => const NotificationsView(),
      ),
      GoRoute(
        path: homeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const HomeView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              // Change the opacity of the screen using a Curve based on the the animation's value
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.fastOutSlowIn).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
