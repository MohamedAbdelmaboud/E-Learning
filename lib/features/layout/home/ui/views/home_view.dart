import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/routing/app_routes.dart';
import '../../../../../common/widgets/custom_app_bar.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Welcome Rashad',
        actionIcon: Icons.notifications,
        actionOnPressed: () => context.push(AppRouter.notificationsView),
      ),
      body: const HomeViewBody(),
    );
  }
}
