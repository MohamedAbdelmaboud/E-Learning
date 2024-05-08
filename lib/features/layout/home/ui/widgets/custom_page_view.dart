import 'package:e_learning/features/layout/home/ui/views/home_view.dart';
import 'package:e_learning/features/layout/inbox/ui/views/inbox_view.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/my_courses_view.dart';
import 'package:e_learning/features/layout/profile/ui/views/profile_view.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required PageController pageController,
    this.onPageChanged,
  }) : _pageController = pageController;

  final PageController _pageController;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: onPageChanged,
      children: const <Widget>[
        HomeView(),
        MyCoursesView(),
        InboxView(),
        ProfileView()
      ],
    );
  }
}
