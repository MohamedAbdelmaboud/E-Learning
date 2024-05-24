import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/home/data/models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotifactionDescription extends StatelessWidget {
  const NotifactionDescription({
    super.key,
    required this.model,
  });

  final NotificationsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: AppStyles.bold14,
        ),
        const Gap(5),
        Text(
          model.description,
          style: AppStyles.regular12,
        )
      ],
    );
  }
}
