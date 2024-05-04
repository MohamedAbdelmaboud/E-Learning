import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../common/widgets/custom_app_bar.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          withBackButton: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const PaymentProgress(activeStep: 2),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: SvgPicture.asset(Assets.assetsImagesDone),
              ),
              SvgPicture.asset(
                Assets.assetsImagesDonePicture,
                height: 200,
              ),
              const Gap(50),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    Text(
                      'Congratulations!',
                      style: AppStyles.bold16
                          .copyWith(color: AppColors.primaryColor),
                    ),
                    const Gap(8),
                    Text(
                      'Start Your Learning Today',
                      style: AppStyles.bold12
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ), //227 w
              ),
              CustomTextButtonBuilder.normalWithText(
                  text: 'CONTINUE', onTap: () {}),
            ],
          ),
        ));
  }
}
