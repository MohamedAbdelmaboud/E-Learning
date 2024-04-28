import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/features/intro/ui/widgets/on_boarding_button.dart';
import 'package:e_learning/features/intro/ui/widgets/page_view_models.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      animationDuration: 100,
      showDoneButton: true,
      showSkipButton: true,
      showNextButton: true,
      dotsDecorator: DotsDecorator(
        spacing: const EdgeInsets.all(5),
        activeSize: const Size.square(13.0),
        activeColor: AppColors.primaryColor,
        size: const Size.square(12),
        color: AppColors.primaryColor.withOpacity(0.2),
      ),
      next: const OnboardingButton(text: 'NEXT'),
      done: const OnboardingButton(text: 'DONE'),
      skip: const OnboardingButton(text: 'SKIP'),
      onDone: () => context.go(AppRouter.unlockView),
    );
  }
}
