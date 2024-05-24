import 'package:e_learning/features/layout/inbox/data/models/inbox_item_model.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/chat_column.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/image_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({
    super.key,
    required this.inboxItemModel,
  });

  final InboxItemModel inboxItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
