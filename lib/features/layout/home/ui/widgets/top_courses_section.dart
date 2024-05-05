import 'package:e_learning/features/layout/home/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'top_courses_head_title.dart';
import 'top_courses_items.dart';

class TopCoursesSection extends StatelessWidget {
  const TopCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopCoursesHeadTitle(),
        Gap(10),
        TopCoursesItems(),
      ],
    );
  }
}
