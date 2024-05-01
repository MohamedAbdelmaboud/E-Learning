import 'package:e_learning/features/layout/my_courses/ui/widgets/skill_item.dart';
import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 13,
      children: [
        SkillItem(text: 'Typography'),
        SkillItem(text: 'Layout composition'),
        SkillItem(text: 'Branding'),
        SkillItem(text: 'Visual communication'),
        SkillItem(text: 'Editorial design')
      ],
    );
  }
}
