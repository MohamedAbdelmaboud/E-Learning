import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/features/intro/ui/widgets/body_widget.dart';
import 'package:e_learning/features/intro/ui/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/sign_buttons.dart';

class UnlockView extends StatelessWidget {
  const UnlockView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleWidget(
            imagePath: Assets.assetsImagesUnlock,
          ),
          BodyWidget(
            title: 'Unlock Your Learning Potential',
            subTitle:
                'Your gateway to personalized courses, And guidance for success.',
          ),
          Gap(50),
          SignButtons()
        ],
      ),
    );
  }
}
