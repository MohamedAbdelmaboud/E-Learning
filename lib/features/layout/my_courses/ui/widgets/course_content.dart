import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/assets.dart';
import 'package:flutter/material.dart';

class CourseContent extends StatelessWidget {
  const CourseContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 177,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.assetsImagesImage),
            ),
          ),
        ),
        Container(
          height: 177,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        Container(
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
        )
      ],
    );
  }
}
