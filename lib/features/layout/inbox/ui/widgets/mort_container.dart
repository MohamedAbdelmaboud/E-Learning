import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';

class MortContainer extends StatelessWidget {
  const MortContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.assetsImagesMort,
            ),
          )),
    );
  }
}
