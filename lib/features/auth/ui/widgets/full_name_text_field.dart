import 'package:e_learning/common/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FullNameTextField extends StatelessWidget {
  const FullNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(
      labelText: 'Full Name',
      hintText: 'Enter your name',
    );
  }
}
