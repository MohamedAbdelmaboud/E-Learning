import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.withBackButton = false,
    this.title,
    this.actionIcon,
    this.actionOnPressed,
  });

  final bool withBackButton;
  final String? title;
  final IconData? actionIcon;
  final VoidCallback? actionOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 30,
      automaticallyImplyLeading: false,
      leading: withBackButton
          ? BackButton(
              color: AppColors.primaryColor,
              onPressed: () => context.pop(),
            )
          : null,
      title: Text(
        title ?? '',
        style: AppStyles.bold21,
      ),
      actions: [
        Visibility(
          visible: actionIcon != null,
          child: IconButton(
            onPressed: actionOnPressed,
            icon: Icon(
              actionIcon,
              size: 24,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
