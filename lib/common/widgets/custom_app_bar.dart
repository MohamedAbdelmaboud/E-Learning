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
      leading: Visibility(
        visible: withBackButton,
        child: BackButton(
          color: AppColors.primaryColor,
          onPressed: () => context.pop(),
        ),
      ),
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
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
