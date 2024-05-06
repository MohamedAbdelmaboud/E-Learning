import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/payment_method_view.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/methods_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'methods_row2.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.selectedOption,
    required this.value,
    required this.text,
  });

  final int selectedOption;
  final int value;
  final String text;
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppStyles.regular12,
          ),
          const Gap(8),
          selectedOption == 1 ? const MethodsRow() : const MethodsRow2()
        ],
      ),
      value: value,
      groupValue: selectedOption,
      onChanged: (value) {},
    );
  }
}
