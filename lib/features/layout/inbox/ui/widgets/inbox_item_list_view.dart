import 'package:e_learning/features/layout/inbox/ui/widgets/inbox_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InboxItemListView extends StatelessWidget {
  const InboxItemListView({
    super.key,
    required this.itemCount,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Gap(10),
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const InboxItem();
      },
    );
  }
}
