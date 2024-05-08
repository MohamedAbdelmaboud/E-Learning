import 'package:e_learning/features/layout/home/ui/widgets/categories_section.dart';
import 'package:e_learning/features/layout/home/ui/widgets/continue_watching_section.dart';
import 'package:e_learning/features/layout/home/ui/widgets/search_widget.dart';
import 'package:e_learning/features/layout/home/ui/widgets/suggestion_for_you_section.dart';
import 'package:e_learning/features/layout/home/ui/widgets/top_courses_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
    );
  }
}
