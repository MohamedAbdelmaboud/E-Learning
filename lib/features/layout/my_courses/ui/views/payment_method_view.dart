import 'package:e_learning/features/layout/my_courses/ui/views/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../common/widgets/custom_app_bar.dart';
import '../../../../../common/widgets/custom_text_button_builder.dart';
import '../widgets/custom_radio_button.dart';
import '../widgets/price_row.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({super.key});

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
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 46.0),
                child: PaymentHeadText('Select  Payment Method'),
              ),
              const CustomRadioButton(
                text: 'Credit / Debit Card',
                selectedOption: 1,
                value: 1,
              ),
              const CustomRadioButton(
                text: 'JazzCash / EasyPaisa ',
                selectedOption: 2,
                value: 0,
              ),
              const Gap(150),
              const PriceRow(),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomTextButtonBuilder.normalWithText(
                    text: 'Continue', onTap: () {}),
              ),
            ],
          ),
        ));
  }
}
