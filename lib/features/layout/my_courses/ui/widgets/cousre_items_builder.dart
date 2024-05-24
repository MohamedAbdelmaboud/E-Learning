import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/common/widgets/custom_item_builder.dart';
import 'package:flutter/material.dart';

class CourseItemsBuilder extends StatelessWidget {
  const CourseItemsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        children: List.generate(
          courseItemsModels.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 13.0),
              child: CustomItemBuilder.courseItem(
                model: courseItemsModels[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
