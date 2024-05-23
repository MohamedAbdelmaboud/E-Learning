import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/transaction_view.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/price_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../common/helpers/push_with_slide_transition.dart';
import 'custom_row.dart';
import 'custom_text_field.dart';
import 'payment_head_text.dart';
import 'payment_progress.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          const PaymentProgress(activeStep: 2),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 46.0),
            child: PaymentHeadText('Select  Payment Method'),
          ),
          const CustomTextField(
            hintText: 'Card Number',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: CustomRow(),
          ),
          const CustomTextField(
            hintText: 'Name on Card',
          ),
          const Gap(20),
          Text(
            'We will store and use your card details for smooth and secure future purchases.',
            style: AppStyles.regular12,
          ),
          const Gap(50),
          const PriceRow(),
          const Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomTextButtonBuilder.normalWithText(
              text: 'Continue',
              onTap: () {
                pushWithSlideTransition(
                  context,
                  const TransactionView(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
