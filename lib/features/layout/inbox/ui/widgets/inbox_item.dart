import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../data/models/inbox_item_model.dart';
import 'message_item.dart';
import 'num_of_messages_container.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({
    super.key,
    required this.inboxItemModel,
  });
  final InboxItemModel inboxItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      MessageItem(inboxItemModel: inboxItemModel),
      Column(
        children: [
          const NumOfMessagesContainer(),
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
