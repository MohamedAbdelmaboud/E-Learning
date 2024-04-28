import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButtonBuilder.reversedWithTextAndLogo(
      text: 'Sign in with Google',
      logo: Assets.assetsImagesGoogleLogo,
      onTap: () {},
    );
  }
}
