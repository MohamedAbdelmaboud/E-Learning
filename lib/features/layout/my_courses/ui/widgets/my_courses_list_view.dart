import 'package:e_learning/features/layout/my_courses/cubits/my_courses_cubit.dart';
import 'package:e_learning/features/layout/my_courses/cubits/my_courses_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'my_courses_list_view_item.dart';

class MyCoursesListView extends StatelessWidget {
  const MyCoursesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCoursesCubit, MyCoursesCubitState>(
      builder: (context, state) {
        final cubit = MyCoursesCubit.get(context);
        final courses = cubit.courses;
        return ListView.separated(
          itemBuilder: (context, index) => MyCoursesListViewItem(
            course: courses[index],
          ),
          separatorBuilder: (context, index) => const Gap(7),
          itemCount: courses.length,
        );
      },
    );
  }
}
