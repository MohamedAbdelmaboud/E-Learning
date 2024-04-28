import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'small_container.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: Image.asset(
              Assets.assetsImagesMort,
              height: 70,
            ),
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Abdelmaboud',
                style: AppStyles.bold14,
              ),
              const Gap(5),
              Text(
                'Hello! Good Morning.',
                style: AppStyles.regular12,
              )
            ],
          ),
        ],
      ),
      Column(
        children: [
          const SmallContainer(),
          const Gap(5),
          Text(
            '7.00 Pm',
            style: AppStyles.regular12,
          )
        ],
      ),
    ]);
  }
}
