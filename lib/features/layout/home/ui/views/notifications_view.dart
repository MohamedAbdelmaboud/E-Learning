import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:e_learning/features/layout/home/data/models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Notifications',
        withBackButton: true,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return NotificationsItem(model: notifications[index]);
        },
      ),
    );
  }
}

class NotificationsItem extends StatelessWidget {
  const NotificationsItem({
    super.key,
    required this.model,
  });
  final NotificationsModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(99),
          child: SvgPicture.asset(
            Assets.assetsImagesCheck,
            height: 45,
          ),
        ),
        const Gap(20),
        Column(
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
        ),
        const Gap(20),
        Text(
          model.date,
          style: AppStyles.regular9.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
