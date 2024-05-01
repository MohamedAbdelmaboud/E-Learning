import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/payment_view.dart';
import 'package:flutter/material.dart';

import 'overview_row.dart';

class OverviewItemsBuilder extends StatelessWidget {
  const OverviewItemsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(overviewItemsModels.length,
          (index) => OverviewRow(itemModel: overviewItemsModels[index])),
    );
  }
}
