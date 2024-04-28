import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButtonBuilder.normalWithText(
      text: 'SIGN IN',
      onTap: () {},
    );
  }
}
