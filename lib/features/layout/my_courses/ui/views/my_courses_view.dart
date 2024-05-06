import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../widgets/courses_tab_options.dart';
import '../widgets/my_courses_list_view.dart';

class MyCoursesView extends StatelessWidget {
  const MyCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Courses',
        actionIcon: Icons.notifications,
        actionOnPressed: () => context.push(AppRouter.notificationsView),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CoursesTabOptions(),
            Gap(10),
            Expanded(
              child: MyCoursesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
