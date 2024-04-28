import 'package:e_learning/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpConfirmPasswordTextField extends StatelessWidget {
  const SignUpConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Confirm Password',
      hintText: '***********',
      isPassword: true,
    );
  }
}
