import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'suggestions_for_you_items.dart';
import 'suggestions_for_you_title.dart';

class SuggestionForYouSection extends StatelessWidget {
  const SuggestionForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SuggestionsForYouTitle(),
        Gap(10),
        SuggestionsForYouItems(),
      ],
    );
  }
}
