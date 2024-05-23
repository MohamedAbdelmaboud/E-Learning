import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/chat_column.dart';
import 'package:e_learning/features/layout/inbox/ui/widgets/image_avatar.dart';
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
        color: AppColors.withOpacity,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const ImageAvatar(
            imagePath: Assets.assetsImagesRashad,
          ),
          const Gap(20),
          const ChatColumn(
            title: 'Mohamed Rashad',
            subTitle: 'mohamedrashad1@gmail.com',
          ),
          Expanded(child: SvgPicture.asset(Assets.assetsImagesEdit))
        ],
      ),
    );
  }
}
