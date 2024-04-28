import 'package:e_learning/features/auth/login/ui/views/login_view.dart';
import 'package:e_learning/features/auth/login/ui/views/unlock_view.dart';
import 'package:e_learning/features/home/ui/views/home_view.dart';
import 'package:e_learning/features/intro/ui/views/on_boarding_view.dart';
import 'package:e_learning/features/splash/ui/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static String splashView = '/';
  static String homeView = '/homeView';
  static String onBoardingView = '/onBoardingView';
  static String loginView = '/loginView';
  static String unlockView = '/unlockView';
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
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
          path: unlockView, builder: (context, state) => const UnlockView()),
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