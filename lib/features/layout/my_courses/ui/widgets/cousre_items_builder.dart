import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/common/widgets/custom_item_builder.dart';
import 'package:flutter/material.dart';

class CousreItemsBuilder extends StatelessWidget {
  const CousreItemsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        courseItemsModels.length,
        (index) => CustomItemBuilder.courseItem(
          model: courseItemsModels[index],
        ),
      ),
    );
  }
}
