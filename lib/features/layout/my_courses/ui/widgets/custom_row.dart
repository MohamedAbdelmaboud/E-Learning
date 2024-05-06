import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 170,
          child: CustomTextField(
            hintText: 'CVV Number',
          ),
        ),
        SizedBox(
          width: 170,
          child: CustomTextField(
            hintText: 'Expiry Date',
          ),
        ),
      ],
    );
  }
}
