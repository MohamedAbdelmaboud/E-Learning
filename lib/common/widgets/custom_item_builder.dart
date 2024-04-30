import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../features/layout/profile/ui/widgets/custom_item.dart';
import '../utils/app_colors.dart';

class CustomItemBuilder {
  // Profile item
  static profileItem({
    required ItemModel model,
  }) {
    return CustomItem(
      model: model,
      widget: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 16,
        color: AppColors.primaryColor,
      ),
    );
  }

  // course item
  static courseItem({
    required ItemModel model,
  }) {
    return CustomItem(
      model: model,
      widget: Text(model.trailingText ?? '', style: AppStyles.regular12),
    );
  }
}
