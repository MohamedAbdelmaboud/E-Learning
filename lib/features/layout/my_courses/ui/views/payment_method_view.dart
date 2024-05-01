import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/features/layout/my_courses/ui/views/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../common/widgets/custom_app_bar.dart';
import '../../../../../common/widgets/custom_text_button_builder.dart';
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

class MethodsRow2 extends StatelessWidget {
  const MethodsRow2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.assetsImagesJazzCash,
          height: 30,
        ),
        const Gap(20),
        SvgPicture.asset(
          Assets.assetsImagesEasypaisa,
          height: 30,
        ),
      ],
    );
  }
}

class MethodsRow extends StatelessWidget {
  const MethodsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.assetsImagesVisa),
        const Gap(20),
        SvgPicture.asset(Assets.assetsImagesMastercard),
        const Gap(20),
        SvgPicture.asset(Assets.assetsImagesPayPal),
        const Gap(20),
        SvgPicture.asset(Assets.assetsImagesMaestro),
      ],
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.selectedOption,
    required this.value,
    required this.text,
  });

  final int selectedOption;
  final int value;
  final String text;
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppStyles.regular12,
          ),
          const Gap(8),
          selectedOption == 1 ? const MethodsRow() : const MethodsRow2()
        ],
      ),
      value: value,
      groupValue: selectedOption,
      onChanged: (value) {},
    );
  }
}
