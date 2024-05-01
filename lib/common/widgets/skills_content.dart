import 'package:e_learning/features/layout/my_courses/ui/widgets/course_head_text.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/custom_wrap.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SkillsContent extends StatelessWidget {
  const SkillsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CourseHeadText(text: 'Skills'),
        Gap(10),
        CustomWrap(),
      ],
    );
  }
}
