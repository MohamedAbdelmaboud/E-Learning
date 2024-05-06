import 'package:e_learning/features/layout/home/ui/widgets/categories_items.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'categories_head_title.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CategoriesHeadTitle(),
      Gap(10),
      CategoriesItems(),
    ]);
  }
}
