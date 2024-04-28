import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/widgets/custom_button.dart';
import 'package:e_learning/features/intro/data/models/page_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/page_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Container buildDot(int index, BuildContext context) {
// Another Container returned
    return Container(
      height: 9,
      width: 9,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: currentIndex == index
            ? AppColors.primaryColor
            : AppColors.dotsColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            // PageView Builder
            child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageViewBody(pageModel: pages[index]),
                  // const Gap(40),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(
                  //     3,
                  //     (index) => buildDot(index, context),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),

          Column(
            children: [
              CustomButton(text: 'Sign in', onPressed: () {}),
              CustomButton(text: 'Sign up', onPressed: () {}),
            ],
          )
          // Container created for dots
        ],
      ),
    );
  }
}
