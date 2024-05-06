import 'package:e_learning/features/layout/home/data/view_model/home_view_model.dart';
import 'package:e_learning/features/layout/home/ui/widgets/suggestions_for_you_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SuggestionsForYouItems extends StatelessWidget {
  const SuggestionsForYouItems({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = HomeViewModel.suggestionsCourses;
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (itemBuilder, index) => SuggestionsForYouItem(
          course: courses[index],
        ),
        separatorBuilder: (separatorBuilder, index) => const Gap(15),
        itemCount: courses.length,
      ),
    );
  }
}
