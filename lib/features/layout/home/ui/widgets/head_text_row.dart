import 'package:e_learning/common/widgets/underline_text.dart';
import 'package:e_learning/features/auth/ui/widgets/head_text.dart';
import 'package:flutter/material.dart';

class HeadTextRow extends StatelessWidget {
  const HeadTextRow(
    this.text, {
    super.key,
    this.seeAll = true,
    this.onPressed,
  });
  final String text;
  final bool seeAll;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeadText(text),
        const Spacer(),
        UnderlineText(
          text: seeAll ? 'See All' : 'See Less',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
