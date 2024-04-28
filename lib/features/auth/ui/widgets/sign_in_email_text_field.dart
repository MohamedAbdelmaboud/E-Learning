import 'package:e_learning/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInEmailTextField extends StatelessWidget {
  const SignInEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Email',
      hintText: 'youremail@gmail.com',
    );
  }
}
