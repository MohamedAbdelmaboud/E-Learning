import 'package:e_learning/features/layout/home/data/view_model/home_view_model.dart';
import 'package:flutter/material.dart';

import 'continue_watching_item.dart';

class ContinueWatchingItems extends StatelessWidget {
  const ContinueWatchingItems({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = HomeViewModel.inProgressCourses;
    return Column(
      children: courses.map((course) => ContinueWatchingItem(course)).toList(),
    );
  }
}
