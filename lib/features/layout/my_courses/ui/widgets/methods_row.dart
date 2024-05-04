import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
