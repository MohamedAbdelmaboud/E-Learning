import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/inbox_v_iew_body.dart';

class InboxView extends StatelessWidget {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Inbox',
        actionIcon: Icons.message_outlined,
      ),
      body: InboxVIewBody(),
    );
  }
}
