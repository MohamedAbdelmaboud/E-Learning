import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:e_learning/features/intro/data/models/page_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ButtonsColumn extends StatelessWidget {
  const ButtonsColumn({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextButtonBuilder.normalWithText(
          text: 'CONTINUE',
          width: MediaQuery.sizeOf(context).width * 0.57,
          onTap: () {
            currentIndex == pages.length - 1
                ? context.go(AppRouter.unlockView)
                : controller.nextPage(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  );
          },
        ),
        const Gap(20),
        TextButton(
          onPressed: () {
            context.go(AppRouter.unlockView);
          },
          child: Text(
            'SKIP',
            style: AppStyles.regular14.copyWith(
                decoration: TextDecoration.underline,
                color: AppColors.greyColor),
          ),
        )
      ],
    );
  }
}
