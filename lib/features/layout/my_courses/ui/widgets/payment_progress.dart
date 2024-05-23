import 'package:e_learning/features/layout/my_courses/ui/widgets/progress_row.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/progress_row_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentProgress extends StatelessWidget {
  const PaymentProgress({
    super.key,
    required this.activeStep,
  });
  final int activeStep;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressRow(
          activeStep: activeStep,
        ),
        const Gap(5),
        const ProgressRowText(),
      ],
    );
  }
}
