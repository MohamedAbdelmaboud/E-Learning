import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class OverviewRow extends StatelessWidget {
  const OverviewRow({
    super.key,
    required this.itemModel,
  });
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          SvgPicture.asset(
            itemModel.iconPath,
            height: 17.5,
          ),
          const Gap(15),
          Text(
            itemModel.title,
            style: AppStyles.regular12,
          )
        ],
      ),
    );
  }
}
