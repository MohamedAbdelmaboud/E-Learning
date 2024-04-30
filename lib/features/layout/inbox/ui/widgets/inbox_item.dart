import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'chat_column.dart';
import 'mort_container.dart';
import 'small_container.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Row(
        children: [
          MortContainer(),
          Gap(20),
          CustomColumn(
            title: 'Abdelmaboud',
            subTitle: 'Hello! Good Morning.',
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
