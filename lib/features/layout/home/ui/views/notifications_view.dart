import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:e_learning/features/layout/home/data/models/notifications_model.dart';
import 'package:flutter/material.dart';

import '../widgets/notifications_item.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Notifications',
        withBackButton: true,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return NotificationsItem(model: notifications[index]);
        },
      ),
    );
  }
}
