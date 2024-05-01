import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:e_learning/common/widgets/skills_content.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../common/utils/app_colors.dart';
import '../../../../../common/utils/app_styles.dart';
import '../widgets/course_name.dart';
import '../widgets/custom_divider.dart';
import '../widgets/overview_items_builder.dart';
import '../widgets/price_row.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        withBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PaymentProgress(
                activeStep: 1,
              ),
              const Gap(50),
              const PaymentHeadText('Overview'),
              const Gap(23),
              const CourseName(),
              const Gap(18),
              const OverviewItemsBuilder(),
              const Gap(22),
              const SkillsContent(),
              const Gap(67),
              const PriceRow(),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomTextButtonBuilder.normalWithText(
                    text: 'Continue', onTap: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentHeadText extends StatelessWidget {
  const PaymentHeadText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: AppStyles.bold21,
      ),
    );
  }
}

class PaymentProgress extends StatelessWidget {
  const PaymentProgress({
    super.key,
    required this.activeStep,
  });
  final int activeStep;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressRow(
          activeStep: activeStep,
        ),
        const Gap(5),
        const ProgressRowText(),
      ],
    );
  }
}

class ProgressRowText extends StatelessWidget {
  const ProgressRowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProgressText(
          'Overview',
        ),
        ProgressText(
          'Payment Method',
        ),
        ProgressText(
          'Completed',
        )
      ],
    );
  }
}

class ProgressText extends StatelessWidget {
  const ProgressText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.medium12.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}

class ProgressRow extends StatelessWidget {
  const ProgressRow({
    super.key,
    required this.activeStep,
  });

  final int activeStep;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProgressContainer(
          number: '1',
          isActive: activeStep >= 1, // Check if step 1 is active
        ),
        const CustomDivider(),
        ProgressContainer(
          number: '2',
          isActive: activeStep >= 2, // Check if step 2 is active
        ),
        const CustomDivider(),
        ProgressContainer(
          number: '3',
          isActive: activeStep >= 3, // Check if step 3 is active
        ),
      ],
    );
  }
}

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({
    super.key,
    required this.number,
    this.isActive = false,
  });
  final String number;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? AppColors.primaryColor
            : AppColors.primaryColor.withOpacity(0.6),
      ),
      child: Text(
        number,
        style: AppStyles.bold14.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
