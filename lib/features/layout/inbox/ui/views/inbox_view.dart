import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_row.dart';
import '../widgets/inbox_item_list_view.dart';

class InboxView extends StatelessWidget {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Inbox',
        withBackButton: true,
      ),
      body: Padding(
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
      ),
    );
  }
}
