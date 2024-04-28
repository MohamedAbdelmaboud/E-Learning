import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:e_learning/features/auth/views/widgets/head_text.dart';
import 'package:e_learning/features/auth/views/widgets/hint_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        withBackButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(20),
            HeadText('Reset Password'),
            Gap(20),
            HintText(
                'Reset your password to regain access to your learning journey.'),
          ],
        ),
      ),
    );
  }
}
