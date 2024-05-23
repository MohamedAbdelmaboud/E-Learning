import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../data/models/inbox_item_model.dart';
import 'chat_column.dart';
import 'image_avatar.dart';
import 'small_container.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({
    super.key,
    required this.inboxItemModel,
  });
  final InboxItemModel inboxItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          ImageAvatar(
            imagePath: inboxItemModel.imagePath,
          ),
          const Gap(20),
          ChatColumn(
            title: inboxItemModel.title,
            subTitle: inboxItemModel.subTitle,
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
