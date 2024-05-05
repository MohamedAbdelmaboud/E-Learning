import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'continue_watching_items.dart';
import 'continue_watching_title.dart';

class ContinueWatchingSection extends StatelessWidget {
  const ContinueWatchingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ContinueWatchingTitle(),
        Gap(10),
        ContinueWatchingItems(),
      ],
    );
  }
}
