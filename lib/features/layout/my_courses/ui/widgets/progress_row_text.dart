import 'package:e_learning/features/layout/my_courses/ui/widgets/progress_text.dart';
import 'package:flutter/material.dart';

class ProgressRowText extends StatelessWidget {
  const ProgressRowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProgressText(
          'Overview',
        ),
        ProgressText(
          'Payment Method',
        ),
        ProgressText(
          'Completed',
        )
      ],
    );
  }
}
