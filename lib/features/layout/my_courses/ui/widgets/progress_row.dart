import 'package:e_learning/features/layout/my_courses/ui/widgets/custom_divider.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/progress_container.dart';
import 'package:flutter/material.dart';

class ProgressRow extends StatelessWidget {
  const ProgressRow({
    super.key,
    required this.activeStep,
  });

  final int activeStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProgressContainer(
          number: '1',
          isActive: activeStep >= 1, // Check if step 1 is active
        ),
        const CustomDivider(),
        ProgressContainer(
          number: '2',
          isActive: activeStep >= 2, // Check if step 2 is active
        ),
        const CustomDivider(),
        ProgressContainer(
          number: '3',
          isActive: activeStep >= 3, // Check if step 3 is active
        ),
      ],
    );
  }
}
