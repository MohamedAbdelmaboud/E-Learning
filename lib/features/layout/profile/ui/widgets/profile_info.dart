import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/chat_column.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/mort_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const MortContainer(),
          const Gap(20),
          const CustomColumn(
            title: 'Mohamed Rashad',
            subTitle: 'mohamedrashad1@gmail.com',
          ),
          Expanded(child: SvgPicture.asset(Assets.assetsImagesEdit))
        ],
      ),
    );
  }
}
