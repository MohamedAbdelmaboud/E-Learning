import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const Icon(
        Icons.play_arrow_rounded,
        size: 40,
        color: AppColors.primaryColor,
      ),
    );
  }
}
