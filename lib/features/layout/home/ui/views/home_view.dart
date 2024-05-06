import 'package:e_learning/common/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/widgets/custom_app_bar.dart';
import '../widgets/categories_section.dart';
import '../widgets/continue_watching_section.dart';
import '../widgets/search_widget.dart';
import '../widgets/suggestion_for_you_section.dart';
import '../widgets/top_courses_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: CustomAppBar(
          title: 'Welcome Rashad',
          actionIcon: Icons.notifications,
          actionOnPressed: () => context.push(AppRouter.notificationsView),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchWidget(),
                Gap(15),
                ContinueWatchingSection(),
                Gap(15),
                CategoriesSection(),
                Gap(15),
                SuggestionForYouSection(),
                Gap(15),
                TopCoursesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
