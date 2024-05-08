import 'package:e_learning/features/auth/ui/views/reset_password_view.dart';
import 'package:e_learning/features/auth/ui/views/sign_up_view.dart';
import 'package:e_learning/features/auth/ui/views/unlock_view.dart';
import 'package:e_learning/features/intro/ui/views/on_boarding_view.dart';
import 'package:e_learning/features/layout/home/cubit/categories_cubit.dart';
import 'package:e_learning/features/layout/inbox/ui/views/inbox_view.dart';
import 'package:e_learning/features/layout/my_courses/cubits/my_courses_cubit.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/my_courses_view.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/payment_method_view.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/payment_view.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/transaction_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/ui/views/sign_in_view.dart';
import '../../features/layout/home/ui/views/layout_view.dart';
import '../../features/layout/home/ui/views/notifications_view.dart';
import '../../features/layout/my_courses/ui/views/course_content_view.dart';
import '../../features/layout/my_courses/ui/views/course_view.dart';
import '../../features/layout/my_courses/ui/views/payment_details.dart';
import '../../features/layout/profile/ui/views/profile_view.dart';
import '../../features/splash/ui/views/splash_view.dart';

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
  static String profileView = '/profileView';
  static String courseView = '/courseView';
  static String paymentView = '/paymentView';
  static String paymentMethodView = '/paymentMethodView';
  static String myCourses = '/myCourses';
  static String paymentDetailsView = '/paymentDetailsView';
  static String transactionView = '/transactionView';
  static String myCoursesView = '/myCoursesView';
  static String courseContentView = '/courseContentView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: transactionView,
          builder: (context, state) => const TransactionView()),
      GoRoute(
        path: paymentDetailsView,
        builder: (context, state) => const PaymentDetailsView(),
      ),
      GoRoute(
        path: paymentMethodView,
        builder: (context, state) => const PaymentMethodView(),
      ),
      GoRoute(
        path: paymentView,
        builder: (context, state) => const PaymentView(),
      ),
      GoRoute(
        path: courseView,
        builder: (context, state) => const CourseView(),
      ),
      GoRoute(
        path: profileView,
        builder: (context, state) => const ProfileView(),
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
        path: courseContentView,
        builder: (context, state) => const CourseContentView(),
      ),
      GoRoute(
        path: homeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => CategoriesCubit()..fetchData(),
                ),
                BlocProvider(
                  create: (context) => MyCoursesCubit()..fetchSavedCourses(),
                  child: const MyCoursesView(),
                ),
              ],
              child: const LayoutView(),
            ),
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
      GoRoute(
        path: myCourses,
        builder: (context, state) => const MyCoursesView(),
      ),
    ],
  );
  static List<String> pages = [
    splashView,
    homeView,
    onBoardingView,
    unlockView,
    signInView,
    signUpView,
    resetPasswordView,
    inboxView,
    notificationsView,
    profileView,
    courseView,
    paymentView,
    paymentMethodView,
    myCourses,
    paymentDetailsView,
    transactionView
  ];
}
