import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';

class SignUpWithFacebook extends StatelessWidget {
  const SignUpWithFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButtonBuilder.normalWithTextAndLogo(
      text: 'Sign up with Facebook',
      logo: Assets.assetsImagesFacebookLogo,
      onTap: () {},
    );
  }
}
