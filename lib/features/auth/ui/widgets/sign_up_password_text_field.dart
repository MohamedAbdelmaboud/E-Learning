import 'package:e_learning/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPasswordTextField extends StatelessWidget {
  const SignUpPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Password',
      hintText: '***********',
      isPassword: true,
    );
  }
}
