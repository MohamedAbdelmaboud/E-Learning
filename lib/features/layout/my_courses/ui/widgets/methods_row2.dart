import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
