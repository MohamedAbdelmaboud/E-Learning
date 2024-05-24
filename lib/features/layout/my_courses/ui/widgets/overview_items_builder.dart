import 'package:e_learning/common/models/item_model.dart';
import 'package:flutter/material.dart';

import '../../../../../common/utils/assets.dart';
import 'overview_row.dart';

class OverviewItemsBuilder extends StatelessWidget {
  const OverviewItemsBuilder({
    super.key,
  });
  static // for Overview
      List<ItemModel> overviewItemsModels = [
    ItemModel(
      iconPath: Assets.assetsImagesBook,
      title: '50+ Lectures',
    ),
    ItemModel(
      iconPath: Assets.assetsImagesTime,
      title: '4 Weeks',
    ),
    ItemModel(
      iconPath: Assets.assetsImagesCertification,
      title: 'Online Certificate',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(overviewItemsModels.length,
          (index) => OverviewRow(itemModel: overviewItemsModels[index])),
    );
  }
}
