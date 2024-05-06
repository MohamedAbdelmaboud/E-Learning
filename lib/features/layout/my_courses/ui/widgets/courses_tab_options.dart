import 'package:e_learning/features/layout/my_courses/cubits/my_courses_cubit.dart';
import 'package:e_learning/features/layout/my_courses/cubits/my_courses_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_tab_button.dart';

class CoursesTabOptions extends StatelessWidget {
  const CoursesTabOptions({super.key});

  static List<String> tabs = [
    'Saved Courses',
    'In Progress',
    'Completed',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCoursesCubit, MyCoursesCubitState>(
      builder: (context, state) {
        final cubit = MyCoursesCubit.get(context);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tabs
              .asMap()
              .entries
              .map(
                (entry) => CustomTabButton(
                  text: entry.value,
                  isSelected: entry.key == cubit.index,
                  onTap: () => cubit.changeIndex(entry.key),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
