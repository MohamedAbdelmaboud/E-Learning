import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:e_learning/features/auth/views/widgets/head_text.dart';
import 'package:e_learning/features/auth/views/widgets/hint_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/email_text_field.dart';
import 'widgets/forget_password.dart';
import 'widgets/or_sign_in_with_text.dart';
import 'widgets/password_text_field.dart';
import 'widgets/sign_in_text_button.dart';
import 'widgets/sign_in_with_face_book.dart';
import 'widgets/sign_in_with_google.dart';
import 'widgets/sign_up_here_row.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
            HeadText('SIGN IN'),
            Gap(20),
            HintText('Sign in to access your personalized learning journey.'),
            Gap(12),
            EmailTextField(),
            Gap(21),
            PasswordTextField(),
            Gap(6),
            ForgetPassword(),
            Gap(24),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SignInTextButton(),
                    Gap(60),
                    OrSignInWithText(),
                    Gap(16),
                    SignInWithFaceBook(),
                    Gap(16),
                    SignInWithGoogle(),
                    Spacer(),
                    SignUpHereRow(),
                    Gap(50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
