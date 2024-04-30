import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'My Profile',
        withBackButton: true,
      ),
      body: ProfileViewBody(),
    );
  }
}
