import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/features/intro/data/models/page_model.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons_column.dart';
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

  Widget buildDot(int index, BuildContext context) {
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
            flex: 5,
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
                  const SizedBox(
                      height:
                          10), // Add some space between PageViewBody and dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ButtonsColumn(
              currentIndex: currentIndex,
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
