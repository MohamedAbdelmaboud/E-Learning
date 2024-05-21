import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/home/data/models/course_model.dart';
import 'package:e_learning/features/layout/my_courses/cubits/my_courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MyCoursesListViewItem extends StatelessWidget {
  const MyCoursesListViewItem({
    super.key,
    required this.course,
  });

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/${course.imagePath}.png',
                width: 130,
                height: 140,
                fit: BoxFit.fill,
              ),
              const Gap(15),
              Expanded(
                child: SizedBox(
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: AppStyles.bold16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(2),
                      Text(
                        course.channelName,
                        style: AppStyles.medium12,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(2),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.primaryColor,
                            size: 15,
                          ),
                          const Gap(5),
                          Text(
                            course.rating.toString(),
                          )
                        ],
                      ),
                      const Gap(3),
                      Text(
                        course.description,
                        style: AppStyles.regular12,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      const Gap(4),
                      _courseCardBottomBuilder(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSavedCoursesBottom(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            context.push(AppRouter.courseView, extra: 'assets/images/${course.imagePath}.png');
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
            alignment: Alignment.center,
            child: Text(
              'Enroll',
              style: AppStyles.semiBold14.copyWith(
                color: AppColors.whiteColor.withOpacity(0.8),
              ),
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.people,
          color: AppColors.primaryColor,
        ),
        const Gap(5),
        Text(
          course.studentsCount.toString(),
          style: AppStyles.semiBold12.copyWith(color: AppColors.primaryColor),
        ),
        const Gap(5),
      ],
    );
  }

  Widget _buildOnProgressCoursesBottom() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        LinearProgressIndicator(
          color: AppColors.primaryColor,
          backgroundColor: AppColors.primaryColor.withOpacity(0.2),
          value: course.progress!.toDouble() / 100,
          borderRadius: BorderRadius.circular(5),
          minHeight: 7,
        ),
        const Gap(1),
        Text(
          '${course.progress.toString()}% Completed',
          style: AppStyles.regular12,
        ),
      ],
    );
  }

  Widget _buildCompletedCoursesBottom() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
        alignment: Alignment.center,
        child: Text(
          'View  Your  Certificate',
          style: AppStyles.semiBold14.copyWith(
            color: AppColors.whiteColor.withOpacity(0.8),
          ),
        ),
      ),
    );
  }

  Widget _courseCardBottomBuilder(context) {
    int index = MyCoursesCubit.get(context).index;
    if (index == 0) {
      return _buildSavedCoursesBottom(context);
    } else if (index == 1) {
      return _buildOnProgressCoursesBottom();
    } else if (index == 2) {
      return _buildCompletedCoursesBottom();
    }
    return const SizedBox();
  }
}
