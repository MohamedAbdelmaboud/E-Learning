import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Assets.assetsImagesDollar,
              height: 24,
            ),
            const Gap(12),
            Text(
              'Total Price',
              style: AppStyles.semiBold16,
            )
          ],
        ),
        Text(
          r'35$',
          style: AppStyles.semiBold16,
        ),
      ],
    );
  }
}
