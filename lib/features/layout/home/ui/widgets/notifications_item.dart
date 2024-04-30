import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/home/data/models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class NotificationsItem extends StatelessWidget {
  const NotificationsItem({
    super.key,
    required this.model,
  });
  final NotificationsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: SvgPicture.asset(
                    model.imagePath,
                    height: 40,
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
              ],
            ),
            const Gap(20),
            Text(
              model.date,
              style: AppStyles.regular9.copyWith(color: AppColors.greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
