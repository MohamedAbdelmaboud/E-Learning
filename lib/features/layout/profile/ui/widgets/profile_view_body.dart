import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/profile/ui/widgets/profile_info.dart';
import 'package:flutter/material.dart';

import 'profile_items_builder.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const ProfileInfo(),
          const ProfileItemsBuilder(),
          const Spacer(),
          Text(
            'Privacy Policy ..Terms and Conditions',
            style: AppStyles.regular12,
          ) // Yup Yup
        ],
      ),
    );
  }
}
