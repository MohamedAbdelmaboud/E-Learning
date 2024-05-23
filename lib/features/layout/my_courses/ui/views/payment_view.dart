import 'package:e_learning/common/widgets/custom_app_bar.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:e_learning/common/widgets/skills_content.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../common/helpers/push_with_slide_transition.dart';
import '../widgets/course_name.dart';
import '../widgets/overview_items_builder.dart';
import '../widgets/payment_head_text.dart';
import '../widgets/payment_progress.dart';
import '../widgets/price_row.dart';
import 'payment_method_view.dart';

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
                  text: 'Continue',
                  onTap: () {
                    pushWithSlideTransition(
                      context,
                      const PaymentMethodView(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
