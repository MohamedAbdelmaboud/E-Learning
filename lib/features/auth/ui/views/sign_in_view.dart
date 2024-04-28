import 'package:e_learning/features/auth/ui/widgets/sign_in_email_text_field.dart';
import 'package:e_learning/features/auth/ui/widgets/sign_in_password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_divider.dart';
import '../widgets/forget_password.dart';
import '../widgets/sign_in_hint_text.dart';
import '../widgets/sign_in_text.dart';
import '../widgets/sign_in_text_button.dart';
import '../widgets/sign_in_with_facebook.dart';
import '../widgets/sign_in_with_google.dart';
import '../widgets/sign_up_here.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(70),
                HeadText('SIGN IN'),
                Gap(20),
                HintText(
                    'Sign in to access your personalized learning journey.'),
                Gap(12),
                SignInEmailTextField(),
                Gap(21),
                SignInPasswordTextField(),
                Gap(6),
                ForgetPassword(),
                Gap(24),
                SignInButton(),
                Gap(60),
                CustomDivider('Or Sign in with'),
                Gap(16),
                SignInWithFacebook(),
                Gap(16),
                SignInWithGoogle(),
                Gap(70),
                SignUpHere(),
                Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
