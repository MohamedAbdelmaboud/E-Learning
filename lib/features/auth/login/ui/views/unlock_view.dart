import 'package:e_learning/common/utils/app_images.dart';
import 'package:e_learning/common/widgets/custom_button.dart';
import 'package:e_learning/features/intro/ui/widgets/body_widget.dart';
import 'package:e_learning/features/intro/ui/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class UnlockView extends StatelessWidget {
  const UnlockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TitleWidget(
            imagePath: Assets.assetsImagesUnlock,
          ),
          const BodyWidget(
            title: 'Unlock Your Learning Potential',
            subTitle:
                'Your gateway to personalized courses, And guidance for success.',
          ),
          Row(
            children: [
              CustomButton(text: 'Sign in', onPressed: () {}),
              CustomButton(text: 'Sign up', onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
