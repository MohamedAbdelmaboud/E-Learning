import 'package:e_learning/common/models/item_model.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.model,
    required this.widget,
  });
  final ItemModel model;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              model.iconPath,
              height: 18,
            ),
            const Gap(12),
            Text(
              model.title,
              style: AppStyles.semiBold16,
            )
          ],
        ),
        widget,
      ],
    );
  }
}
