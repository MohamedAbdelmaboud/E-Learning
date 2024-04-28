import 'package:e_learning/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NewPasswordTextForm extends StatelessWidget {
  const NewPasswordTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'New Password',
      hintText: '***********',
      isPassword: true,
    );
  }
}
