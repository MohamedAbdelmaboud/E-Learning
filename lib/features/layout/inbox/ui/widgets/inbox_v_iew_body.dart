import 'package:e_learning/features/layout/inbox/ui/widgets/custom_row.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/inbox_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InboxVIewBody extends StatelessWidget {
  const InboxVIewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            CustomRow(
              text: 'New',
            ),
            Gap(18),
            InboxItemListView(
              itemCount: 2,
            ),
            CustomRow(
              text: 'Earlier',
            ),
            Gap(18),
            InboxItemListView(
              itemCount: 3,
            ),
            CustomRow(
              text: 'New',
            ),
            Gap(18),
            InboxItemListView(
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
