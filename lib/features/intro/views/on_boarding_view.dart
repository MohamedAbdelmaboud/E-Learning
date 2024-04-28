import 'package:e_learning/features/intro/widgets/page_view_models.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      animationDuration: 150,
      showDoneButton: true,
      showSkipButton: false,
      showNextButton: true,
      dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.all(8),
          activeSize: Size.square(15.0),
          activeColor: MyColors.primaryColor,
          size: Size.square(12),
          color: Color(0xffB2CCFF)),
      next: const Text(
        "Next",
        style: TextStyle(fontSize: 20),
      ),
      done: const Text(
        'Done',
        style: TextStyle(fontSize: 20),
      ),
      skip: const Text(
        'Skip',
        style: TextStyle(fontSize: 20),
      ),
      onDone: () => Navigator.pushReplacementNamed(context, LoginView.id),
    );
  }
}
